import SwiftUI

struct IntrestGroupView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Text("Interest Groups!")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 40)
                HStack(spacing: 20) {
                    ClubButton(title: "MakerSpace")
                    ClubButton(title: "Model United Nations Intrest Group")
                }
                HStack(spacing: 20) {
                    ClubButton(title: "Gym Club")
                    ClubButton(title: "Band Intrest Group")
                }
                HStack(spacing: 20) {
                    NavigationLink(destination: HackClubView()){
                        HackButton(title: "Hack Club")
                    }
                    ClubButton(title: "Crochet SIL Interest Group")
                }
                
            }
        }
    }
    
}

struct HackClubView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://bbsshack.club")!)
            }
            .navigationTitle("Hack Club website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct HackButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(25)
            .frame(maxWidth: .infinity)
            .background(Color(UIColor(red: 36/255, green: 38/255, blue: 55/255, alpha: 1.0)))
            .cornerRadius(30)
            .padding(.horizontal)
    }
} 
