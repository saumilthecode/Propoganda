import SwiftUI
import Foundation

// Define structs to match the JSON structure
struct BusTimingResponse: Codable {
    let Services: [BusService]
}

struct BusService: Codable {
    let ServiceNo: String
    let NextBus: BusArrival
    let NextBus2: BusArrival?
    let NextBus3: BusArrival?
}

struct BusArrival: Codable {
    let EstimatedArrival: String
    let Load: String
    let Feature: String
    let `Type`: String
}

import SwiftUI
import Foundation

class APImanagerView: ObservableObject {
    @Published var busTimings: [BusService] = []
    
    func getBusTiming(busStopCode: String) {
        let apiURL = URL(string: "https://datamall2.mytransport.sg/ltaodataservice/v3/BusArrival?BusStopCode=\(busStopCode)")!
        var request = URLRequest(url: apiURL)
        request.setValue("rvv3jElxTLya+kHcYdca2A==", forHTTPHeaderField: "AccountKey")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("No data received.")
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode(BusTimingResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.busTimings = decodedResponse.Services
                }
            } catch {
                print("Failed to decode JSON: \(error)")
            }
        }.resume()
    }
    
    func calculateTimeDifference(from isoDate: String) -> String {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withColonSeparatorInTimeZone]
        
        // Try parsing the date string
        guard let date = formatter.date(from: isoDate) else {
            return "Unknown time"
        }
        
        // Calculate the time difference
        let timeInterval = date.timeIntervalSince(Date())
        let minutes = Int(timeInterval / 60)
        
        if minutes <= 0 {
            return "Arriving now"
        } else {
            return "Next bus in \(minutes) minute\(minutes == 1 ? "" : "s")"
        }
    }
}
