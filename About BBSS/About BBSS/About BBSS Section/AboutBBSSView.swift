import SwiftUI

struct AboutBBSSView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack {
                        Image("BBSSLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 150)
                        
                        Image("Sideshow_1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 150)


                        Text("Our Vision")
                            .font(.title)
                            .fontWeight(.bold)
                        

                        Text("Bukit Batok Secondary School is a premier school that provides quality holistic education to every BBSSian.")
                            .font(.body)
                            .padding(.horizontal, 20)
                        
                        Text("Our Mission")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 20)
                        
                        Text("To nurture BBSSians to be ")
                            .font(.body)
                        + Text("self-directed learners")
                            .font(.body)
                            .foregroundColor(.blue)
                        + Text(" with an abundance mentality.")
                            .font(.body)
                        
                        Text("Our Values")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 20)
                        
                        VStack(alignment: .leading) {
                            Text("Reflection")
                            Text("Enterprise")
                            Text("Self-discipline")
                            Text("Perseverance")
                            Text("Empathy")
                            Text("Creativity")
                            Text("Teamwork")
                        }
                        .font(.body)
                        .padding(.horizontal, 20)
                        
                        Text("Our Philosophy")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 20)
                        
                        Text("We believe that every child is unique and has innate abilities that can be developed.")
                            .font(.body)
                            .padding(.horizontal, 20)
                        
                        NavigationLink(destination: ProgrammesView()) {
                            Text("Our Programmes")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                        .padding(.top, 20)
                        .ignoresSafeArea()
                        
                    }
                    .navigationTitle("About BBSS")
                    .foregroundColor(.black)
                }
            }
        }
        .foregroundColor(.black)
    }
}

#Preview {
    AboutBBSSView()
}
