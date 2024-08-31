import SwiftUI

struct VisualArts: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    Text("Visual and Performing Arts")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.top, 40)
                    HStack(spacing: 20) {
                        NavigationLink(destination: BandView()){
                            ClubButton(title: "Concert Band")
                        }
                        NavigationLink(destination:ChoirView()){
                            ClubButton(title: "Choir")
                        }
                    }
                    HStack(spacing: 20) {
                        NavigationLink(destination:ChineseOrchestraView()){
                            ClubButton(title: "Chinese Orchestra")
                        }
                        NavigationLink(destination: ModernDanceView()){
                            ClubButton(title: "Modern Dance")
                        }
                    }
                    HStack(spacing: 20) {
                        NavigationLink(destination:MalayDanceView()){
                            ClubButton(title: "Malay Dance")
                        }
                    }
                }
            }
        }
    }
}

struct BandView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/performing-arts-groups/concert-band/")!)
            }
            .navigationTitle("Band Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ChoirView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/performing-arts-groups/choir/")!)
            }
            .navigationTitle("Choir Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct ChineseOrchestraView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/performing-arts-groups/chinese-orchestra/")!)
            }
            .navigationTitle("Chinese Orchestra Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct ModernDanceView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://drive.google.com/file/d/1d8TX-0F-7Pt8QLzeDXLw5HSPcckoHwP9/view?usp=sharing")!)
            }
            .navigationTitle("Modern Dance Video")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct MalayDanceView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://drive.google.com/file/d/1KQeEmM_MjuqS2DwULnYV4S08poz2qLKc/view?usp=sharing")!)
            }
            .navigationTitle("Malay Dance Video")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
