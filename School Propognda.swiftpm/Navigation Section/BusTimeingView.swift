import SwiftUI
import MapKit

// Define your API Manager class here

struct BusTimingView: View {
    @StateObject private var apiManager = APImanagerView()
    @State private var busStopCode: String
    
    init(busStopCode: String) {
        _busStopCode = State(initialValue: busStopCode)
    }
    
    var body: some View {
        VStack {
            TextField("Enter Bus Stop Code", text: $busStopCode)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            
            Button(action: {
                apiManager.getBusTiming(busStopCode: busStopCode)
            }) {
                Text("Get Bus Timing")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

struct BusTimingView_Previews: PreviewProvider {
    static var previews: some View {
        BusTimingView(busStopCode: "43531")
    }
}
