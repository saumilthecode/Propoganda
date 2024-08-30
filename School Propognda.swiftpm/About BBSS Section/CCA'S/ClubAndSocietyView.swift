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
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    Text("Clubs and Societies")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.top, 40)
                        .foregroundColor(Color.black)

                    HStack(spacing: 20) {
                        NavigationLink(destination: MediaClubView()) {
                            ClubButton(title: "Media Club")
                        }
                        NavigationLink(destination: RoboticsClubView()) {
                            ClubButton(title: "Robotics Club")
                        }
                    }
                    HStack(spacing: 20) {
                        NavigationLink(destination: OneEarthClubView()) {
                            ClubButton(title: "One Earth Club")
                        }
                        NavigationLink(destination: DramaAndDebateView()) {
                            ClubButton(title: "English Language Drama & Debating")
                        }
                    }
                }
            }
        }
    }
}

struct ClubButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(25)
            .frame(maxWidth: .infinity)
            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
            .cornerRadius(30)
            .padding(.horizontal)
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

struct DramaAndDebateView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()

                WebView(url: URL(string: "https://docs.google.com/presentation/d/1mVCVulEWlPL6hNHOzVXMC9U5hO6R8WNOw4vXWfYGeps/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("ELDDS Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

