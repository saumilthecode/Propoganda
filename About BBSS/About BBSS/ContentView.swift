import SwiftUI
import Shiny

struct ContentView: View {
    @StateObject var navigationManager = NavigationManager()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    NavigationLink(destination:propoganda()){
                        Image("BBSS")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                            .padding(.top, 50)
                            .shadow(radius: 20)
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 20) { // Reduced space between buttons
                        Spacer()
                        
                        NavigationLink(destination: AboutBBSSView()) {
                            Text("About BBSS")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 300, height: 50) // Adjusted width and height for better size control
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(20)
                        }
                        Spacer()
                        NavigationLink(destination: HowToGetToBBSSView()) {
                            Text("How to get to BBSS")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 300, height: 50) // Matched width and height for consistency
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(20)
                        }
                        Spacer()
                        
                    }
                    .padding(.top, 20) // Added padding to top for better spacing
                    
                    Spacer()
                    
                    NavigationLink(destination: TriviaQuizView()) {
                        
                        //                    NavigationLink(destination: FeedBack()) {
                        
                        //                        Text("Feedback!")
                        Text("Trivia Quiz")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 200, height: 50) // Adjusted button size for single button
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(20)
                    }
                    .padding(.bottom, 30)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    Text("Made by Saumil, Zenneth and Daivik")
                        .font(.title)
                        .fontWeight(.bold)
                    NavigationLink(destination:HackClubView()) {
                        HStack {
                            Text("A product of")
                                .font(.title)
                                .fontWeight(.bold)
                            HStack{
                                Text("Hack Club BBSS")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                Image("HC LOGO")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: 40)
                            }
                        }
                    }
                }
            }
            //            .navigationTitle("Main Page")
        }
        .foregroundColor(.black)
        .environmentObject(navigationManager)
    }
}

#Preview{
    ContentView()
}



struct propoganda: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string:"https://www.moe.gov.sg/schoolfinder/schooldetail?schoolname=bukit-batok-secondary-school")!)
            }
            .navigationTitle("BBSS")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct FeedBack: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string:"https://docs.google.com/forms/d/11EIaaQngAFi9lIY8X2p1YzdfFGoUKArIyZZ4KjiaI3c/viewform")!)
            }
            .navigationTitle("BBSS")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
