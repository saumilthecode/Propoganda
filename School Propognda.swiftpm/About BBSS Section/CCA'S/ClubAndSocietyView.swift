import SwiftUI

struct ClubAndSocietyView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Text("Clubs and Societies")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 40)
                HStack(spacing: 20) {
                    ClubButton(title: "Media Club")
                    ClubButton(title: "Robotics Club")
                }
                HStack(spacing: 20) {
                    ClubButton(title: "One Earth Club")
                    ClubButton(title: "English Language Drama & Debating")
                }
            }
        }
    }
}




struct ClubButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(25)
            .frame(maxWidth: .infinity)
            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
            .cornerRadius(30)
            .padding(.horizontal)
    }
}

