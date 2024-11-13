import SwiftUI
import Shiny

struct ContentView: View {
    @StateObject var navigationManager = NavigationManager()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                GeometryReader { geometry in
                        VStack(spacing: geometry.size.height > 700 ? 20 : 10) {
                            NavigationLink(destination: propoganda()) {
                                Image("BBSS")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: min(geometry.size.width * 0.6, 300),
                                           height: min(geometry.size.width * 0.6, 300))
                                    .padding(.top, geometry.size.height > 700 ? 50 : 20)
                                    .shadow(radius: 20)
                            }
                            
                            Spacer(minLength: geometry.size.height > 700 ? 20 : 10)
                            
                            if geometry.size.width > 500 {
                                // Horizontal layout for wider screens
                                HStack(spacing: 15) {
                                    Spacer()
                                    NavigationButtonView(title: "About BBSS", width: geometry.size.width * 0.4)
                                    Spacer()
                                    NavigationButtonView(title: "How to get to BBSS", width: geometry.size.width * 0.4)
                                    Spacer()
                                }
                                
                                NavigationLink(destination: TriviaQuizView()) {
                                    Text("Trivia Quiz")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: geometry.size.width * 0.5, height: 50) // Flexible width
                                        .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                        .cornerRadius(20)
                                        .minimumScaleFactor(0.75)
                                }
                                .padding(.top, 10)
                                
                            } else {
                                // Stacked layout for smaller screens with uniform button width
                                VStack(spacing: 10) {
                                    let buttonWidth = geometry.size.width * 0.8
                                    NavigationButtonView(title: "About BBSS", width: buttonWidth)
                                    NavigationButtonView(title: "How to get to BBSS", width: buttonWidth)
                                    NavigationLink(destination: TriviaQuizView()) {
                                        Text("Trivia Quiz")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(width: buttonWidth, height: 50)
                                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                            .cornerRadius(20)
                                            .minimumScaleFactor(0.75)
                                    }
                                }
                                .padding(.vertical, 10)
                            }
                            
                            Spacer(minLength: geometry.size.height > 700 ? 20 : 10)
                            
                            VStack(alignment: .center, spacing: 5) { // Footer section
                                Text("Made by Saumil, Zenneth and Daivik")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                NavigationLink(destination: HackClubView()) {
                                    HStack {
                                        Text("A product of")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                            .minimumScaleFactor(0.5)
                                        HStack {
                                            Text("Hack Club BBSS")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                                .foregroundStyle(.blue)
                                                .minimumScaleFactor(0.5)
                                            Image("HC LOGO")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(maxWidth: 30)
                                        }
                                    }
                                }
                            }
                            .padding(.bottom, geometry.size.height > 700 ? 30 : 10)
                        }
                        .frame(width: geometry.size.width)
                        .navigationBarTitleDisplayMode(.inline)
                    
                }
            }
        }
        .foregroundColor(.black)
        .environmentObject(navigationManager)
    }
}

struct NavigationButtonView: View {
    let title: String
    let width: CGFloat
    
    var body: some View {
        NavigationLink(destination: destinationView(for: title)) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .frame(width: width, height: 50)
                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                .cornerRadius(20)
                .minimumScaleFactor(0.75)
        }
    }
    
    @ViewBuilder
    func destinationView(for title: String) -> some View {
        switch title {
        case "About BBSS":
            AboutBBSSView()
        case "How to get to BBSS":
            HowToGetToBBSSView()
        default:
            EmptyView()
        }
    }
}

// Additional views remain unchanged

struct propoganda: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string:"https://www.moe.gov.sg/schoolfinder/schooldetail?schoolname=bukit-batok-secondary-school")!)
            }
            .navigationTitle("BBSS")
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(Color.black)
        }
    }
}

struct FeedBack: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string:"https://docs.google.com/forms/d/e/1FAIpQLSf-YQpx0Oty2MEcLntSK_O-YLbiF3XiUMGPjEdEDcsTfiFN3Q/viewform?embedded=true")!)
            }
            .navigationTitle("BBSS")
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(Color.black)
        }
    }
}

#Preview{
    ContentView()
}
