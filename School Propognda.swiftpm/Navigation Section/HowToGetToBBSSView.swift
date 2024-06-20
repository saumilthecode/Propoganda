import SwiftUI
import MapKit

struct HowToGetToBBSSView: View {
    
    // Coordinates for Bukit Batok Secondary School
    private let bbssLocation = CLLocationCoordinate2D(latitude: 1.35735, longitude: 103.7518)
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 1.35735, longitude: 103.7518),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            
            VStack {
                Text("How to get to BBSS")
                    .font(.title)
                    .padding()
            }
        }
        .foregroundColor(.black)
    }
}

