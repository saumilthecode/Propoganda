import SwiftUI

struct IntrestGroupView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Text("Intrest Groups!")
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
                    ClubButton(title: "Hack Club!!!")
                    ClubButton(title: "Crochet SIL Interest Group")
                }
                
            }
        }
    }
    
}
