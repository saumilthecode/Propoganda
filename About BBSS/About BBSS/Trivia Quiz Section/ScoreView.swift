import SwiftUI

struct ScoreView: View {
    var questionsCorrect: Int
    let totalQuestions = 9
    @Environment(\.dismiss) var dismiss
    @Environment(\.horizontalSizeClass) var sizeClass
    @EnvironmentObject var navigationManager: NavigationManager
    
    var scorePercentage: Int {
        return (questionsCorrect * 100) / totalQuestions
    }
    
    var body: some View {
        ZStack {
            // Match your app's background color
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            
            GeometryReader { geometry in
                ScrollView {
                    VStack(spacing: geometry.size.height * 0.04) {
                        Spacer()
                            .frame(height: geometry.size.height * 0.05)
                        
                        Text("Quiz Completed!")
                            .font(geometry.size.width < 500 ? .title : .largeTitle)
                            .fontWeight(.bold)
                        
                        Text("You answered \(questionsCorrect) out of \(totalQuestions) questions correctly.")
                            .font(geometry.size.width < 500 ? .body : .title2)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        // Progress bar using your app's color scheme
                        ProgressView(value: Double(questionsCorrect), total: Double(totalQuestions))
                            .progressViewStyle(LinearProgressViewStyle(tint: Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0))))
                            .scaleEffect(x: 1, y: 4, anchor: .center)
                            .padding(.horizontal, geometry.size.width * 0.1)
                        
                        Text(motivationalMessage())
                            .font(geometry.size.width < 500 ? .subheadline : .headline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, geometry.size.width * 0.08)
                        
                        VStack(spacing: 15) {
                            
                            // Feedback button
                            NavigationLink(destination: FeedBack()) {
                                Text("Give Feedback")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: geometry.size.width * 0.8, height: 50)
                                    .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                    .cornerRadius(20)
                            }
                        }
                        .padding(.top, geometry.size.height * 0.02)
                        
                        Spacer()
                            .frame(height: geometry.size.height * 0.05)
                    }
                    .frame(minHeight: geometry.size.height)
                    .padding()
                }
            }
        }
    }
    
    private func motivationalMessage() -> String {
        switch scorePercentage {
        case 90...100:
            return "Amazing job! You might be a BBSS-ion!"
        case 70..<90:
            return "Great effort! You're almost there!"
        case 50..<70:
            return "Good attempt! Keep practicing!"
        default:
            return "Don't give up! Keep trying!"
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(questionsCorrect: 9)
            .environmentObject(NavigationManager())
    }
}
