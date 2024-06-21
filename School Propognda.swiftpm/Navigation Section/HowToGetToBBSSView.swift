import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let coordinate = CLLocationCoordinate2D(latitude: 1.348628792170563, longitude: 103.7405316243571)
    
    let Field = CLLocationCoordinate2D(latitude: 1.3493218409464067, longitude: 103.74000762974674)

    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.mapType = .mutedStandard // Choose your map type here (standard, satellite, hybrid)
        
        // Apply custom map style if needed (not directly supported by SwiftUI Map)
        // Example:
        // mapView.overrideUserInterfaceStyle = .dark // Apply a dark map style
        
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "Bukit Batok Secondary School"
        mapView.addAnnotation(annotation)
        
        let Fieldm = MKPointAnnotation()
        Fieldm.coordinate = Field
        Fieldm.title = "Our Field"
        mapView.addAnnotation(Fieldm)

        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // Update the view if needed
    }
}

struct HowToGetToBBSSView: View {
    var body: some View {
        MapView()
            .edgesIgnoringSafeArea(.all)
    }
}


struct HowToGetToBBSSView_Previews: PreviewProvider {
    static var previews: some View {
        HowToGetToBBSSView()
    }
}
