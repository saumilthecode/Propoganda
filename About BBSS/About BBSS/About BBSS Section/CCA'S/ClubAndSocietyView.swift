import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct ClubAndSocietyView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Text("Clubs and Societies")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.top, 40)
                        .foregroundColor(Color.black)
                    
                    Spacer(minLength: 20)
                    
                    // Use a ScrollView for compact (iPhone) and grid layout for larger screens (iPad)
                    if horizontalSizeClass == .compact {
                        ScrollView {
                            VStack(spacing: 20) {
                                clubButton(title: "Media Club", destination: AnyView(MediaClubView()))
                                clubButton(title: "Robotics Club", destination: AnyView(RoboticsClubView()))
                                clubButton(title: "One Earth Club", destination: AnyView(OneEarthClubView()))
                                clubButton(title: "Gym Club", destination: AnyView(GymView()))
                            }
                            .padding(.horizontal, 20)
                        }
                    } else {
                        // 2x2 grid for larger screens (iPads)
                        VStack(spacing: 20) {
                            HStack(spacing: 20) {
                                clubButton(title: "Media Club", destination: AnyView(MediaClubView()))
                                clubButton(title: "Robotics Club", destination: AnyView(RoboticsClubView()))
                            }
                            HStack(spacing: 20) {
                                clubButton(title: "One Earth Club", destination: AnyView(OneEarthClubView()))
                                clubButton(title: "Gym Club", destination: AnyView(GymView()))
                            }
                        }
                        .padding(.horizontal, 40) // Padding for the grid layout
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
    
    // Reusable Club Button
    private func clubButton(title: String, destination: AnyView) -> some View {
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
        .buttonStyle(PlainButtonStyle())
    }
}

struct MediaClubView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://docs.google.com/presentation/d/1edqtTUw0ETCqGdThSJ2WIDltXFw0dj3k/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("Media Club Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct RoboticsClubView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/clubs/robotics-club/")!)
            }
            .navigationTitle("Robotics Club Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct OneEarthClubView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/clubs/one-earth-club/")!)
            }
            .navigationTitle("One Earth Club Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct GymView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/clubs/gym-club/")!)
            }
            .navigationTitle("Gym Club Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ClubAndSocietyView()
}
