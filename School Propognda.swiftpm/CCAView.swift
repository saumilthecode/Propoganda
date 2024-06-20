import SwiftUI

struct CCAView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("CCA'S")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
                
                VStack(spacing: 20) {
                    Button(action: {
                        // Action for Sports & Games
                    }) {
                        Text("Sports & Games")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(30)
                    }
                    
                    Button(action: {
                        // Action for Uniformed Groups
                    }) {
                        Text("Uniformed Groups")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(30)
                    }
                    
                    Button(action: {
                        // Action for Visual and Performing Arts
                    }) {
                        Text("Visual and Performing Arts")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(30)
                    }
                    
                    Button(action: {
                        // Action for Clubs and Societies
                    }) {
                        Text("Clubs and Societies")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(30)
                    }
                }
                .padding(.horizontal, 40)
                
                Spacer()
            }
        }
    }
}

