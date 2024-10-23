import SwiftUI

struct ProgramCard: View {
    let title: String
    let description: String
    let imageName: String
    let websiteURL: String
    
    var body: some View {
        NavigationLink(destination: WebView(url: URL(string: websiteURL)!)
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)) {
            VStack(alignment: .leading, spacing: 20) {  // Increased spacing
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
//                    .frame(height: 200)
                    .clipped()
                    .cornerRadius(12)
                
                Text(title)
                    .font(.title)  // Increased from title3
                    .bold()
                    .foregroundColor(.white)
                
                Text(description)
                    .font(.title3)  // Increased from body
                    .foregroundColor(.white.opacity(0.9))
                    .fixedSize(horizontal: false, vertical: true)
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

struct HolisticView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {  // Increased spacing
                    Text("Holistic Programmes")
                        .font(.system(size: 40, weight: .bold))  // Increased size
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    ProgramCard(
                        title: "Applied Learning Programme",
                        description: "Developing Proactive Problem-Solvers through Robot Building, Coding & Programming! The Applied Learning Programme in BBSS focuses on developing each student to be a empathetic and active problem solver by utilising the mBot platform as a way to get students familiar with logical problem solving skills. This programme is compulsory for all secondary 1 and 2 students as part of their time in BBSS!",
                        imageName: "Image 1",
                        websiteURL: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Key-Programmes/applied-learning-programme/"
                    )
                    
                    ProgramCard(
                        title: "Learning for Life Programme",
                        description: "The BBSS Learning for Life Programme (LLP) focuses on Community Youth Leadership, offering students opportunities to develop leadership and values through community service. Supported by the Habits of Mind Programme, the LLP includes two tiers: broad-based opportunities for all students (Tier 1) and specialized experiences for those with higher interest and ability (Tier 2). These tiers involve three stages where students discover their strengths, develop leadership skills, and lead their peers.",
                        imageName: "Image",
                        websiteURL: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Key-Programmes/learning-for-life-programme-llp/"
                    )
                    
                    ProgramCard(
                        title: "Habits of Mind",
                        description: "Habits of Mind is a framework that helps students develop intelligent behaviors and critical thinking skills for solving problems. The program teaches 16 essential habits including persisting, managing impulsivity, listening with understanding and empathy, thinking flexibly, and striving for accuracy. Through this program, students learn to approach challenges thoughtfully and develop lifelong learning skills that will benefit them in academic and real-world situations.",
                        imageName: "HOM BANNER 2",
                        websiteURL: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Key-Programmes/habits-of-mind/"
                    )
                }
                .padding()
            }
            .background(
                Color(red: 250/255, green: 240/255, blue: 180/255)
                    .ignoresSafeArea()
            )
        }
    }
}

#Preview {
    HolisticView()
}
