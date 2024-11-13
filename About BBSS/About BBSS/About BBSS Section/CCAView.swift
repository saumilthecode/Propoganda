import SwiftUI

struct CCAView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    // Spacer between the top and "CCA's"
                    Spacer()
                    
                    Text("CCA'S")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    // Spacer between the title and buttons
                    Spacer(minLength: 20)
                    
                    // Check if the device is in compact mode (e.g., iPhones)
                    if horizontalSizeClass == .compact {
                        // For compact screens (iPhones), use a ScrollView with single-column layout
                        ScrollView {
                            VStack(spacing: 15) {
                                programmeButton(title: "Sports & Games", destination: AnyView(SportsView()))
                                programmeButton(title: "Uniformed Groups", destination: AnyView(UniformedGroupsView()))
                                programmeButton(title: "Performing Arts", destination: AnyView(VisualArts()))
                                programmeButton(title: "Clubs and Societies", destination: AnyView(ClubAndSocietyView()))
                            }
                            .padding(.horizontal, 10) // Padding around buttons
                        }
                    } else {
                        // For regular (iPads) and larger screens, use a 2x2 grid layout
                        VStack(spacing: 20) {
                            HStack(spacing: 20) {
                                programmeButton(title: "Sports & Games", destination: AnyView(SportsView()))
                                programmeButton(title: "Uniformed Groups", destination: AnyView(UniformedGroupsView()))
                            }
                            HStack(spacing: 20) {
                                programmeButton(title: "Performing Arts", destination: AnyView(VisualArts()))
                                programmeButton(title: "Clubs and Societies", destination: AnyView(ClubAndSocietyView()))
                            }
                        }
                        .padding(.horizontal, 40) // Padding around the grid
                    }
                    
                    // Spacer between the buttons and the bottom of the screen
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure VStack takes up full height
            }
            .navigationBarHidden(true) // Hide the navigation bar for a cleaner look
        }
    }
    
    // Reusable button with fixed width and background
    private func programmeButton(title: String, destination: AnyView) -> some View {
        NavigationLink(destination: destination) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(25)
                .frame(maxWidth: .infinity) // Ensure the button expands to fill the available width
                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                .cornerRadius(30)
        }
        .buttonStyle(PlainButtonStyle()) // Ensure that NavigationLink behaves correctly
    }
}

#Preview {
    CCAView()
}
