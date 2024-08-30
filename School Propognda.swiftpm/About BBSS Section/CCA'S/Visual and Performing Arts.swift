import SwiftUI

struct VisualArts: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    Text("Visual and Performing Arts")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.top, 40)
                    HStack(spacing: 20) {
                        ClubButton(title: "Band")
                        ClubButton(title: "Choir")
                    }
                    HStack(spacing: 20) {
                        ClubButton(title: "Chinese Orchestra")
                        ClubButton(title: "Modern Dance")
                    }
                    HStack(spacing: 20) {
                        ClubButton(title: "Malay Dance")
                    }
                }
            }
        }
    }
}
