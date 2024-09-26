import SwiftUI
import MapKit
import Foundation

// Define your API Manager class here

struct BusTimingView: View {
    @StateObject private var apiManager = APImanagerView()
    let busStopCode: String
    @State private var isLoading = true
    
    init(busStopCode: String) {
        self.busStopCode = busStopCode
    }
    
    var body: some View {
        VStack {
            Text("Bus Stop: \(busStopCode)")
                .font(.headline)
                .padding()
            
            if isLoading {
                Text("Loading...")
                    .font(.subheadline)
                    .padding()
            } else if apiManager.busTimings.isEmpty {
                Text("No bus times available.")
                    .font(.subheadline)
                    .padding()
            } else {
                List(apiManager.busTimings, id: \.ServiceNo) { service in
                    VStack(alignment: .leading) {
                        Text("Service: \(service.ServiceNo)")
                            .font(.headline)
                        
                        Text(apiManager.calculateTimeDifference(from: service.NextBus.EstimatedArrival))
                        
                        if let nextBus2 = service.NextBus2 {
                            Text(apiManager.calculateTimeDifference(from: nextBus2.EstimatedArrival))
                        }
                        
                        if let nextBus3 = service.NextBus3 {
                            Text(apiManager.calculateTimeDifference(from: nextBus3.EstimatedArrival))
                        }
                    }
                }
            }
        }
        .onAppear {
            apiManager.getBusTiming(busStopCode: busStopCode)
            
            // Simulate network delay and then stop loading
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                isLoading = false
            }
        }
        .padding()
    }
}
