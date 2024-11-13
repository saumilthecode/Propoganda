import SwiftUI

struct ProgrammesView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationStack {  // Ensure this is wrapped in a NavigationView
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Text("Our Programmes")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    Spacer()
                    
                    if horizontalSizeClass == .compact {
                        // On smaller screens (like iPhones), use a list of buttons
                        VStack(spacing: 15) {
                            programmeButton(title: "Holistic Programmes", destination: AnyView(HolisticView()))
                            programmeButton(title: "Academic Programmes", destination: AnyView(AcademicView()))
                            programmeButton(title: "CCAs", destination: AnyView(CCAView()))
                            programmeButton(title: "Interest Groups", destination: AnyView(IntrestGroupView()))
                        }
                        .padding(.horizontal, 10) // Ensures padding is applied uniformly on mobile
                    } else {
                        // On larger screens (like iPads), use the original HStack layout
                        VStack {
                            HStack(spacing: 15) {
                                programmeButton(title: "Holistic Programmes", destination: AnyView(HolisticView()))
                                programmeButton(title: "Academic Programmes", destination: AnyView(AcademicView()))
                            }
                            .padding(.top, 20)
                            
                            HStack(spacing: 15){
                                programmeButton(title: "CCAs", destination: AnyView(CCAView()))
                                programmeButton(title: "Interest Groups", destination: AnyView(IntrestGroupView()))
                            }
                        }
                        .padding(.horizontal, 10) // Ensures padding is applied uniformly on iPad
                    }
                    Spacer()
                }
//                .navigationTitle("Programmes")  // Place the navigationTitle here
            }
        }
    }
    
    // Reusable button view with fixed width
    private func programmeButton(title: String, destination: AnyView) -> some View {
        NavigationLink(destination: destination) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(25)
                .frame(maxWidth: .infinity)  // Ensures the button expands to fill the available width
                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                .cornerRadius(30)
        }
        .buttonStyle(PlainButtonStyle()) // Remove this if it's causing issues with interaction
    }
}

#Preview {
    ProgrammesView()
}
