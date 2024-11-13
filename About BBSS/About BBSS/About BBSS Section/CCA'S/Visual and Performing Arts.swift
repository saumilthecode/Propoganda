import SwiftUI

struct VisualArts: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    // Spacer between the top and "Performing Arts"
                    Spacer()
                    
                    Text("Performing Arts")
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
                                programmeButton(title: "Concert Band", destination: AnyView(BandView()))
                                programmeButton(title: "Choir", destination: AnyView(ChoirView()))
                                programmeButton(title: "Chinese Orchestra", destination: AnyView(ChineseOrchestraView()))
                                programmeButton(title: "Modern Dance", destination: AnyView(ModernDanceView()))
                                programmeButton(title: "Malay Dance", destination: AnyView(MalayDanceView()))
                                programmeButton(title: "English Language Drama & Debating", destination: AnyView(DramaAndDebateView()))
                            }
                            .padding(.horizontal, 10) // Padding around buttons
                        }
                    } else {
                        // For regular (iPads) and larger screens, use a 2x3 grid layout
                        VStack(spacing: 20) {
                            HStack(spacing: 20) {
                                programmeButton(title: "Concert Band", destination: AnyView(BandView()))
                                programmeButton(title: "Choir", destination: AnyView(ChoirView()))
                            }
                            HStack(spacing: 20) {
                                programmeButton(title: "Chinese Orchestra", destination: AnyView(ChineseOrchestraView()))
                                programmeButton(title: "Modern Dance", destination: AnyView(ModernDanceView()))
                            }
                            HStack(spacing: 20) {
                                programmeButton(title: "Malay Dance", destination: AnyView(MalayDanceView()))
                                programmeButton(title: "English Language Drama & Debating", destination: AnyView(DramaAndDebateView()))
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
    VisualArts()
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
