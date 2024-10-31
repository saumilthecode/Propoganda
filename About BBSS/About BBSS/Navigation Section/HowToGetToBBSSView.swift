import SwiftUI
import MapKit
import Foundation

// Custom Annotation Class
class FoodEstablishmentAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String) {
        self.coordinate = coordinate
        self.title = title
    }
}

struct MapView: UIViewRepresentable {
    let coordinate = CLLocationCoordinate2D(latitude: 1.348628792170563, longitude: 103.7405316243571)

    // Food Establishment Coordinates
    let Alfatah = CLLocationCoordinate2D(latitude: 1.3485823153032095, longitude: 103.74197408232882)
    let McDonalds = CLLocationCoordinate2D(latitude: 1.3479143314175663, longitude: 103.74431436560764)
    let Dominos = CLLocationCoordinate2D(latitude: 1.3483060111765586, longitude: 103.74425428286476)
    let ITea = CLLocationCoordinate2D(latitude: 1.3477100651294638, longitude: 103.743946168088)
    let Canadian241pizza = CLLocationCoordinate2D(latitude: 1.3478063173068207, longitude: 103.74280264385838)
    let PizzaHut = CLLocationCoordinate2D(latitude: 1.3472991786972133, longitude: 103.74297254236457)
    let SevenTEA = CLLocationCoordinate2D(latitude: 1.3487529888946135, longitude: 103.74318676617007)
    let EachACup = CLLocationCoordinate2D(latitude: 1.3477872278938567, longitude: 103.74446509627695)
    let WestMall = CLLocationCoordinate2D(latitude: 1.3502066592704436, longitude: 103.74943757765129)
    let LeQuest = CLLocationCoordinate2D(latitude: 1.355998581681571, longitude: 103.74113113318512)

    @Binding var isShowingBusTimingSheet: Bool
    @Binding var selectedBusStopCode: String
    @Binding var isShowingPopover: Bool
    @Binding var selectedFoodEstablishment: String

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        mapView.mapType = .mutedStandard
        
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)

        // Adding Annotations for Food Establishments
        let foodEstablishments: [(coordinate: CLLocationCoordinate2D, title: String)] = [
            (Alfatah, "Alfatah Store"),
            (McDonalds, "McDonalds"),
            (Dominos, "Domino's Pizza"),
            (ITea, "I Tea"),
            (Canadian241pizza, "Canadian 241 Pizza"),
            (PizzaHut, "Pizza Hut"),
            (SevenTEA, "Seven TEA"),
            (EachACup, "Each A Cup"),
            (WestMall, "West Mall"),
            (LeQuest, "Le Quest")
        ]
        
        for food in foodEstablishments {
            let foodAnnotation = FoodEstablishmentAnnotation(coordinate: food.coordinate, title: food.title)
            mapView.addAnnotation(foodAnnotation)
        }

        // Adding Annotations for Bus Stops
        let busAnnotations: [(coordinate: CLLocationCoordinate2D, title: String, subtitle: String?)] = [
            (CLLocationCoordinate2D(latitude: 1.3493218409464067, longitude: 103.74000762974674), "Our Field", "43531"),
            (CLLocationCoordinate2D(latitude: 1.349778088339879, longitude: 103.74138942773084), "Princess E Pr Sch Bus Stop", "43349"),
            (CLLocationCoordinate2D(latitude: 1.3499657385826525, longitude: 103.74096039545378), "Opp Princess E Pr Sch Bus Stop", "43349"),
            (CLLocationCoordinate2D(latitude: 1.3470962592069924, longitude: 103.7411245591305), "Blk 168 Bus Stop", "43351"),
            (CLLocationCoordinate2D(latitude: 1.3469047797075866, longitude: 103.74106326878132), "Blk 169 Bus Stop", "43359")
        ]
        
        for busAnnotation in busAnnotations {
            let busPoint = MKPointAnnotation()
            busPoint.coordinate = busAnnotation.coordinate
            busPoint.title = busAnnotation.title
            busPoint.subtitle = busAnnotation.subtitle
            mapView.addAnnotation(busPoint)
        }

        // Adding BBSS Annotation
        let bbssAnnotation = MKPointAnnotation()
        bbssAnnotation.coordinate = coordinate
        bbssAnnotation.title = "Bukit Batok Secondary School"
        mapView.addAnnotation(bbssAnnotation)

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
            if let title = view.annotation?.title {
                if title == "Alfatah Store" {
                    // Show popover with information for Alfatah
                    parent.selectedFoodEstablishment = title ?? "potato"
                    parent.isShowingPopover = true
                } else if title == "Bukit Batok Secondary School" {
                    // Open directions to BBSS
                    let destination = MKMapItem(placemark: MKPlacemark(coordinate: parent.coordinate))
                    destination.name = "Bukit Batok Secondary School"
                    destination.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
                } else if let subtitle = view.annotation?.subtitle, let busStopCode = subtitle {
                    // Show bus timing sheet for bus stops
                    parent.selectedBusStopCode = busStopCode
                    parent.isShowingBusTimingSheet = true
                    parent.isShowingPopover = false // Close popover when bus stop is selected
                } else {
                    // Hide the popover if another annotation is selected
                    parent.isShowingPopover = false
                }
            }
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            if let foodAnnotation = annotation as? FoodEstablishmentAnnotation {
                let identifier = "FoodEstablishment"
                var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
                
                if annotationView == nil {
                    annotationView = MKMarkerAnnotationView(annotation: foodAnnotation, reuseIdentifier: identifier)
                    annotationView?.canShowCallout = true
                    
                    // Use SF Symbols
                    let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 25, weight: .regular, scale: .large)
                    let image = UIImage(systemName: "fork.knife")?.withConfiguration(symbolConfiguration)
                    annotationView?.glyphImage = image
                } else {
                    annotationView?.annotation = foodAnnotation
                }
                
                return annotationView
            }
            return nil
        }
    }
}

struct HowToGetToBBSSView: View {
    @State private var isShowingBusTimingSheet = false
    @State private var selectedBusStopCode = ""
    @State private var isShowingPopover = false
    @State private var selectedFoodEstablishment = ""

    var body: some View {
        ZStack {
            MapView(isShowingBusTimingSheet: $isShowingBusTimingSheet, selectedBusStopCode: $selectedBusStopCode, isShowingPopover: $isShowingPopover, selectedFoodEstablishment: $selectedFoodEstablishment)
                .edgesIgnoringSafeArea(.all)
                .sheet(isPresented: $isShowingBusTimingSheet) {
                    BusTimingView(busStopCode: selectedBusStopCode)
                }

            // Popover view
            if isShowingPopover {
                VStack {
                    Text("Information about \(selectedFoodEstablishment)")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(radius: 5)

                    Text("AlFatah is a store with a rich history! Serving BBSS-ions and the local community since 2010 with their delicious food and drinks!")
                    Button("Close") {
                        isShowingPopover = false
                    }
                    .padding(.top, 10)
                }
                .frame(width: 300, height: 200)
                .background(Color.blue.opacity(0.7))
                .cornerRadius(10)
                .padding()
                .transition(.move(edge: .bottom))
                .animation(.default)
            }
        }
    }
}

struct HowToGetToBBSSView_Previews: PreviewProvider {
    static var previews: some View {
        HowToGetToBBSSView()
    }
}
