import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                VStack {
                    Image("BBSS")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding(.top, 50)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: AboutBBSSView()) {
                            Text("About BBSS")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                        .padding(.trailing)
                        
                        Spacer()
                        NavigationLink(destination: HowToGetToBBSSView()) {
                            Text("How to get to BBSS")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                        .padding(.trailing)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: TriviaQuizView()) {
                        Text("Trivia Quiz!")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(25)
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(30)
                    }
                    .padding(.bottom, 30)
                    Spacer()
                }
            }
            .navigationTitle("Main Page")
        }
    }
    
}
