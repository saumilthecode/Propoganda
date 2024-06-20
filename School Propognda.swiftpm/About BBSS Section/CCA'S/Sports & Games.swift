import SwiftUI

struct SportsView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Text("Sports & Games")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 40)
                HStack(spacing: 20) {
                    ClubButton(title: "Air Rifle")
                    ClubButton(title: "Badminton")
                }
                HStack(spacing: 20) {
                    ClubButton(title: "Basketball (Boys)")
                    ClubButton(title: "Cross Country")
                }
                HStack(spacing: 20) {
                    ClubButton(title: "Softball (Girls)")
                    ClubButton(title: "Rugby")
                }
            }
        }
    }
}

    
