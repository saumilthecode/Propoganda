import SwiftUI

struct ScoreView: View {
    var questionsCorrect: Int
    let totalQuestions = 9
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var navigationManager: NavigationManager
    
    var scorePercentage: Int {
        return (questionsCorrect * 100) / totalQuestions
    }
    
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("Quiz Completed!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text("You answered \(questionsCorrect) out of \(totalQuestions) questions correctly.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            ProgressView(value: Double(questionsCorrect), total: Double(totalQuestions))
                .progressViewStyle(LinearProgressViewStyle(tint: .green))
                .scaleEffect(x: 1, y: 4, anchor: .center)
                .padding(.horizontal, 40)
            
            Text(motivationalMessage())
                .font(.headline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
            
            Button(action: {
                navigationManager.navigateToContentView()
                dismiss()
            }) {
                Text("Close")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
            .padding(.horizontal, 40)
            Spacer()
            
        }
        .padding()
        .background(Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0)))
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding(20)
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

#Preview{
    ScoreView(questionsCorrect: 9)
}
