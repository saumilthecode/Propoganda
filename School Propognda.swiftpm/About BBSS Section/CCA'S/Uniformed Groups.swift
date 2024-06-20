import SwiftUI

struct UniformedGroupsView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Text("Uniformed Groups")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 40)
                HStack(spacing: 20) {
                    ClubButton(title: "NCC (Land)")
                    ClubButton(title: "NCC (Sea)")
                }
                HStack(spacing: 20) {
                    ClubButton(title: "Boys' Brigade")
                    ClubButton(title: "Girls' Brigade")
                }
                HStack(spacing: 20) {
                    ClubButton(title: "NPCC")
                }
            }
        }
    }
}


