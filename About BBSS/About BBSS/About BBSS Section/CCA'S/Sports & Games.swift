import SwiftUI

struct SportsView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    // Spacer between the top and "Sports & Games"
                    Spacer()
                    
                    Text("Sports & Games")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .bold()
                        .padding(.top, 40)
                    
                    // Spacer between the title and buttons
                    Spacer(minLength: 20)
                    
                    // Check if the device is in compact mode (e.g., iPhones)
                    if horizontalSizeClass == .compact {
                        // For compact screens (iPhones), use a ScrollView with single-column layout
                        ScrollView {
                            VStack(spacing: 15) {
                                programmeButton(title: "Air Rifle", destination: AnyView(AirRifleView()))
                                programmeButton(title: "Badminton", destination: AnyView(BadmintonView()))
                                programmeButton(title: "Basketball (Boys)", destination: AnyView(BasketballView()))
                                programmeButton(title: "Cross Country", destination: AnyView(CrossCountryView()))
                                programmeButton(title: "Softball (Girls)", destination: AnyView(SoftballView()))
                                programmeButton(title: "Rugby", destination: AnyView(RugbyView()))
                            }
                            .padding(.horizontal, 10) // Padding around buttons
                        }
                    } else {
                        // For regular (iPads) and larger screens, use a 2x2 grid layout
                        VStack(spacing: 20) {
                            HStack(spacing: 20) {
                                programmeButton(title: "Air Rifle", destination: AnyView(AirRifleView()))
                                programmeButton(title: "Badminton", destination: AnyView(BadmintonView()))
                            }
                            HStack(spacing: 20) {
                                programmeButton(title: "Basketball (Boys)", destination: AnyView(BasketballView()))
                                programmeButton(title: "Cross Country", destination: AnyView(CrossCountryView()))
                            }
                            HStack(spacing: 20) {
                                programmeButton(title: "Softball (Girls)", destination: AnyView(SoftballView()))
                                programmeButton(title: "Rugby", destination: AnyView(RugbyView()))
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
    SportsView()
}

struct AirRifleView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://docs.google.com/presentation/d/12_N6pDrQKEqHuGP-pwrY4C3afaAPYr6V_Gu18XEFE3w/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("Air Rifle Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct BadmintonView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/sports-and-games/badminton/")!)
            }
            .navigationTitle("Badminton Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct BasketballView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://drive.google.com/file/d/1ANj6bphxWBrvnX6BV81ne6SVTzGMEDk2/preview")!)
            }
            .navigationTitle("Basketball Video")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct CrossCountryView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/sports-and-games/cross-country/")!)
            }
            .navigationTitle("Cross Country Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct SoftballView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://docs.google.com/presentation/d/1amQuqcYOe9jph4LHKsVwumXMOHBmYfknb3gqYXOXDRI/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("Cross Country Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct RugbyView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://docs.google.com/presentation/d/11xk-0jIUroQE67zHq37uInv7o1aKnFfco-EuB8BwS2I/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("Rugby Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
