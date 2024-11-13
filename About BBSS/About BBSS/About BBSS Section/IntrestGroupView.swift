import SwiftUI
//
//struct IntrestGroupView: View {
//    var body: some View {
//        ZStack {
//            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
//                .ignoresSafeArea()
//            VStack(spacing: 30) {
//                Text("Interest Groups!")
//                    .font(.largeTitle)
//                    .bold()
//                    .padding(.top, 40)
//                HStack(spacing: 20) {
//                    NavigationLink(destination: GenericSilView()){
//
//                        ClubButton(title: "Dikir Barat")
//                    }
//                    NavigationLink(destination: GenericSilView()){
//
//                        ClubButton(title: "Handball")
//                    }
//                }
//                HStack(spacing: 20) {
//                    NavigationLink(destination: GymView()){
//
//                        ClubButton(title: "Gym Club")
//                    }
//                    NavigationLink(destination: GenericSilView()){
//
//                        ClubButton(title: "Football")
//                    }
//                }
//                HStack(spacing: 20) {
//                    NavigationLink(destination: HackClubView()){
//                        HackButton(title: "Hack Club")
//                    }
//                    NavigationLink(destination: GenericSilView()){
//
//                        ClubButton(title: "YiBBSS")
//                    }
//                }
//                HStack(spacing:20){
//                    NavigationLink(destination: GenericSilView()){
//
//                        ClubButton(title: "iYuedo")
//                    }
//                    NavigationLink(destination: GenericSilView()){
//
//                        ClubButton(title: "Esports")
//                    }
//
//                }
//
//
//            }
//        }
//    }
//
//}
//
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
//
//
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
//
//
//struct GenericSilView: View {
//    var body: some View {
//        NavigationStack {
//            ZStack {
//                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
//                    .ignoresSafeArea()
//
//                WebView(url: URL(string:"https://bbss.padlet.org/ng_boon_chong/sil-showcases-and-featured-walls-of-abundance-6yto4xn5ahqw6yvr")!)
//            }
//            .navigationTitle("See their progress!")
//            .foregroundColor(Color.black)
//            .navigationBarTitleDisplayMode(.inline)
//        }
//    }
//}
//struct GymView: View {
//    var body: some View {
//        NavigationStack {
//            ZStack {
//                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
//                    .ignoresSafeArea()
//
//                WebView(url: URL(string:"https://www.bukitbatoksec.moe.edu.sg/clubs/gym-club/")!)
//            }
//            .navigationTitle("Gym Club!")
//            .foregroundColor(Color.black)
//            .navigationBarTitleDisplayMode(.inline)
//        }
//    }
//}
//
//#Preview{
//    IntrestGroupView()
//}

struct InterestCard: View {
    let title: String
    let description: String
    let imageName: String
    let websiteURL: String
    
    var body: some View {
        NavigationLink(destination: WebView(url: URL(string: websiteURL)!)
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)) {
                VStack(alignment: .center, spacing: 10) {                    if !imageName.isEmpty {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300) // Fixed height for images
                        .cornerRadius(12)
                }
                    
                    Text(title)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                    
                    Text(description)
                        .font(.body)
                        .foregroundColor(.white.opacity(0.9))
                        .fixedSize(horizontal: false, vertical: false)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                        .shadow(radius: 4)
                )
            }
    }
}


import SwiftUI

struct IntrestGroupView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) { // Adjust spacing as needed
                    Text("Interest Groups")
                        .font(.system(size: 40, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    // Card Container
                    VStack(spacing: 30) { // Space between cards
                        InterestCard(
                            title: "Hack Club BBSS",
                            description: "Take an idea you're interested in and bring it to Life. Empowering BBSS-ions with technology since 2024. Click here to view our website!",
                            imageName: "logo-Photoroom",
                            websiteURL: "https://bbsshack.club/"
                        )
                        
                        InterestCard(
                            title: "Dikir Barat",
                            description: "Dikir Barat is a traditional Malaysian musical and performance art form, often involving a seated chorus and a lead vocalist! Click here to view our Dikir Barat's perforamnce!",
                            imageName: "dikir",
                            websiteURL: "https://drive.google.com/file/d/15myOdJKjrV9kofCXfVxV-S7kfPxQtTGg/view?usp=sharing"
                        )
                        
//                        InterestCard(
//                            title: "Handball",
//                            description: "Handball is a fast-paced team sport where two teams of seven players each aim to score by throwing a ball into the opposing team’s goal...",
//                            imageName: "",
//                            websiteURL: "https://www.bukitbatoksec.moe.edu.sg/"
//                        )
                        
                        InterestCard(
                            title: "Football",
                            description: "Football!",
                            imageName: "interest2",
                            websiteURL: "https://www.bukitbatoksec.moe.edu.sg/"
                        )
                        
                        InterestCard(
                            title: "ViBBSS",
                            description: "Interest Group dedicated to posting memes on instagram. Click this card to view it!",
                            imageName: "Image 2",
                            websiteURL: "https://www.instagram.com/vi.bbss/?hl=en"
                        )
                        
                        InterestCard(
                            title: "iYuedo",
                            description: "Chinese Quote posting account. Click this card to view it!",
                            imageName: "Image 3",
                            websiteURL: "https://www.instagram.com/iyuedo/?hl=en"
                        )
                    }
                    .padding(.horizontal, 20) // Add horizontal padding for cards
                    .padding(.bottom, 40) // Bottom padding for last card
                }
            }
            .background(Color(red: 250/255, green: 240/255, blue: 180/255).ignoresSafeArea())
        }
    }
}


#Preview {
    IntrestGroupView()
}


