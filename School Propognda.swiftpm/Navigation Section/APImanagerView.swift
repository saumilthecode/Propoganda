import SwiftUI
import Foundation

class APImanagerView: ObservableObject {
    func getBusTiming(busStopCode: String) {
        let apiURL = URL(string: "https://datamall2.mytransport.sg/ltaodataservice/v3/BusArrival?BusStopCode=\(busStopCode)")!
        var request = URLRequest(url: apiURL)
        request.setValue("rvv3jElxTLya+kHcYdca2A==", forHTTPHeaderField: "AccountKey")
        request.setValue("application/json", forHTTPHeaderField: "Accept")

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                print("No data received.")
                return
            }

            if let responseString = String(data: data, encoding: .utf8) {
                print(responseString)
            } else {
                print("Failed to decode response data.")
            }
        }.resume()
    }
}
