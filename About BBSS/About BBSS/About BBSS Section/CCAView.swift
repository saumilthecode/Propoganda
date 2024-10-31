import SwiftUI

struct CCAView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            
            VStack {
                Text("CCA'S")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                VStack(spacing: 20) {
                    // First row
                    HStack(spacing: 20) {
                        NavigationLink(destination: SportsView()){
                            Text("Sports & Games")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                        
                        NavigationLink(destination: UniformedGroupsView()){
                            Text("Uniformed Groups")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                    }
                    
                    // Second row
                    HStack(spacing: 20) {
                        NavigationLink(destination: VisualArts()) {
                            Text("Performing Arts")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                        
                        NavigationLink(destination: ClubAndSocietyView()) {
                            Text("Clubs and Societies")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                    }
                }
                .padding(.horizontal, 40)
            }
        }
    }
}
