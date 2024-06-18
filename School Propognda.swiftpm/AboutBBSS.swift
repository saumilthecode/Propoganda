import SwiftUI

struct AboutBBSS: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("BBSS school explorer!")
                Image("BBSS")      
                
                Spacer()
                
                    NavigationLink(destination: LandingView()) {
                        Text("mcchicken")
                    
                }
                
            }
        }
    }
}
