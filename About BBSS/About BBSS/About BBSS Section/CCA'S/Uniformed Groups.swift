import SwiftUI

struct UniformedGroupsView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    // Spacer between the top and "Uniformed Groups"
                    Spacer()
                    
                    Text("Uniformed Groups")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.top, 40)
                    
                    // Spacer between the title and buttons
                    Spacer(minLength: 20)
                    
                    // Check if the device is in compact mode (e.g., iPhones)
                    if horizontalSizeClass == .compact {
                        // For compact screens (iPhones), use a ScrollView with single-column layout
                        ScrollView {
                            VStack(spacing: 15) {
                                programmeButton(title: "NCC (Land) + NCC (Sea)", destination: AnyView(NCCLandView()))
                                programmeButton(title: "NCC (Land) + NCC (Sea)", destination: AnyView(NCCSeaView()))
                                programmeButton(title: "Boys' Brigade", destination: AnyView(BBView()))
                                programmeButton(title: "Girls' Brigade", destination: AnyView(GBView()))
                                programmeButton(title: "NPCC", destination: AnyView(NPCCView()))
                            }
                            .padding(.horizontal, 10) // Padding around buttons
                        }
                    } else {
                        // For regular (iPads) and larger screens, use a 2x2 grid layout
                        VStack(spacing: 20) {
                            HStack(spacing: 20) {
                                programmeButton(title: "NCC (Land) + NCC (Sea)", destination: AnyView(NCCLandView()))
                                programmeButton(title: "NCC (Land) + NCC (Sea)", destination: AnyView(NCCSeaView()))
                            }
                            HStack(spacing: 20) {
                                programmeButton(title: "Boys' Brigade", destination: AnyView(BBView()))
                                programmeButton(title: "Girls' Brigade", destination: AnyView(GBView()))
                            }
                            HStack(spacing: 20) {
                                programmeButton(title: "NPCC", destination: AnyView(NPCCView()))
                            }
                        }
                        .padding(.horizontal, 40) // Padding around the grid
                    }
                    
                    // Spacer between the buttons and the bottom of the screen
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure VStack takes up full height
            }
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
    UniformedGroupsView()
}

struct NCCLandView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/uniformed-groups/ncc-land/")!)
            }
            .navigationTitle("NCC Land Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NCCSeaView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://docs.google.com/presentation/d/16ME0_RB7u2SM-7CNcPF1orldsacLwosC42kEnU3I458/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("NCC Sea Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct BBView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/uniformed-groups/boys-brigade/")!)
            }
            .navigationTitle("Boys Brigade Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct GBView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://docs.google.com/presentation/d/1zKjJFjeGG_tyFHlFkUvRlMOC6rbEAHkk/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("Girls Brigade Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NPCCView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/uniformed-groups/npcc/")!)
            }
            .navigationTitle("National Police Cadet Corps Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
