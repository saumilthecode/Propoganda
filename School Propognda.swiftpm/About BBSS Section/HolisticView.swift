import SwiftUI

struct HolisticView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Color(red: 250/255, green: 240/255, blue: 180/255)
                    .ignoresSafeArea()
                    .overlay(
                        ScrollView {
                            VStack(alignment: .leading, spacing: 20) {
                                HStack {
                                    Text("Holistic programmes")
                                        .font(.title)
                                        .bold()
                                        .foregroundColor(.black)
                                }
                                .padding()
                                
                                Group {
                                    Text("Applied Learning Programme")
                                        .font(.title3)
                                        .bold()
                                    Text("Developing Proactive Problem-Solvers through Robot Building, Coding & Programming! The Applied Learning Programme in BBSS focuses on developing each student to be a empathetic and active problem solver by utilising the mBot platform as a way to get students familiar with logical problem solving skills. This programme is compulsory for all secondary 1 and 2 students as part of their time in BBSS!")
                                        .padding(.bottom, 10)
                                    
                                    Text("Learning for Life Programme")
                                        .font(.title3)
                                        .bold()
                                    Text("The BBSS Learning for Life Programme (LLP) focuses on Community Youth Leadership, offering students opportunities to develop leadership and values through community service. Supported by the Habits of Mind Programme, the LLP includes two tiers: broad-based opportunities for all students (Tier 1) and specialized experiences for those with higher interest and ability (Tier 2). These tiers involve three stages where students discover their strengths, develop leadership skills, and lead their peers.")
                                }
                                .padding(.horizontal)
                                .foregroundColor(.black)
                            }
                            .padding()
                        }
                    )
            }
        }
    }
}
