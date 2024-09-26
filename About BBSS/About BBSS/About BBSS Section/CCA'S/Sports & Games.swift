import SwiftUI

struct SportsView: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    Text("Sports & Games")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .bold()
                        .padding(.top, 40)
                    HStack(spacing: 20) {
                        NavigationLink(destination: AirRifleView()) {
                            ClubButton(title: "Air Rifle")
                        }
                        NavigationLink(destination: BadmintonView()) {
                            ClubButton(title: "Badminton")
                        }
                    }
                    HStack(spacing: 20) {
                        NavigationLink(destination: BasketballView()) {
                            ClubButton(title: "Basketball (Boys)")
                        }
                        NavigationLink(destination:CrossCountryView()){
                            ClubButton(title: "Cross Country")
                        }
                    }
                    HStack(spacing: 20) {
                        NavigationLink(destination: SoftballView()) {
                            ClubButton(title: "Softball (Girls)")
                        }
                        NavigationLink(destination: RugbyView()){
                            ClubButton(title: "Rugby")
                        }
                    }
                }
            }
        }
    }
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
