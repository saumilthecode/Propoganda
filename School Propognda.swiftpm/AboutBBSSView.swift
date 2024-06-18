import SwiftUI

struct AboutBBSSView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    Image("BBSSLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 200)
                        .padding(.top, 30)
                    
                    Text("Our Vision")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("Bukit Batok Secondary School is a premier school that provides quality holistic education to every BBSSian.")
                        .font(.body)
                        .padding(.horizontal, 20)
                    
                    Text("Our Mission")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    Text("To nurture BBSSians to be self-directed learners with an abundance mentality.")
                        .font(.body)
                        .padding(.horizontal, 20)
                    
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
                    
                    Button(action: {
                        // Add action for the button
                    }) {
                        Text("Our Programmes")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(25)
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(30)
                    }
                    .padding(.top, 20)
                }
                .navigationTitle("About BBSS")
                
            }
        }
        
    }
}
