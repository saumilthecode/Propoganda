import SwiftUI
import MapKit
import Foundation

struct MapView: UIViewRepresentable {
    let coordinate = CLLocationCoordinate2D(latitude: 1.348628792170563, longitude: 103.7405316243571)
    
    let Field = CLLocationCoordinate2D(latitude: 1.3493218409464067, longitude: 103.74000762974674)
    let PEPSbus = CLLocationCoordinate2D(latitude: 1.349778088339879, longitude: 103.74138942773084)
    let PEPSoppbus = CLLocationCoordinate2D(latitude: 1.3499657385826525, longitude: 103.74096039545378)
    let schlbus = CLLocationCoordinate2D(latitude: 1.3470962592069924, longitude: 103.7411245591305)
    let schloppbuss = CLLocationCoordinate2D(latitude: 1.3469047797075866, longitude: 103.74106326878132)
    
    @Binding var isShowingBusTimingSheet: Bool
    @Binding var selectedBusStopCode: String
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        mapView.mapType = .mutedStandard
        
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
        
        let pepb = MKPointAnnotation()
        pepb.coordinate = PEPSbus
        pepb.title = "Princess E Pr Sch Bus Stop"
        pepb.subtitle = "43531"
        mapView.addAnnotation(pepb)
        
        let pepob = MKPointAnnotation()
        pepob.coordinate = PEPSoppbus
        pepob.title = "Opp Princess E Pr Sch Bus Stop"
        pepob.subtitle = "43349"
        mapView.addAnnotation(pepob)
        
        let schb = MKPointAnnotation()
        schb.coordinate = schlbus
        schb.title = "Blk 168 Bus Stop"
        schb.subtitle = "43351"
        mapView.addAnnotation(schb)
        
        let schlob = MKPointAnnotation()
        schlob.coordinate = schloppbuss
        schlob.title = "Blk 169 Bus Stop"
        schlob.subtitle = "43359"
        mapView.addAnnotation(schlob)
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // Update the view if needed
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            if let title = view.annotation?.title, title == "Bukit Batok Secondary School" {
                let destination = MKMapItem(placemark: MKPlacemark(coordinate: view.annotation!.coordinate))
                destination.name = "Bukit Batok Secondary School"
                destination.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
            } else if let subtitle = view.annotation?.subtitle, let busStopCode = subtitle {
                parent.selectedBusStopCode = busStopCode
                parent.isShowingBusTimingSheet = true
            }
        }
    }
    
}

struct HowToGetToBBSSView: View {
    @State private var isShowingBusTimingSheet = false
    @State private var selectedBusStopCode = ""
    
    var body: some View {
        MapView(isShowingBusTimingSheet: $isShowingBusTimingSheet, selectedBusStopCode: $selectedBusStopCode)
            .edgesIgnoringSafeArea(.all)
            .sheet(isPresented: $isShowingBusTimingSheet) {
                BusTimingView(busStopCode: selectedBusStopCode)
            }
    }
}

struct HowToGetToBBSSView_Previews: PreviewProvider {
    static var previews: some View {
        HowToGetToBBSSView()
    }
}
