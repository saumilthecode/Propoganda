import SwiftUI

struct ScoreView: View {
    var questionsDone: Int
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack {
            Text("Quiz Completed!")
               .font(.largeTitle)
               .padding()
            
            Text("You answered \(questionsDone) out of 9 questions")
               .font(.title)
               .padding()
            
            Button(action: {
                navigationManager.navigateToContentView()
                dismiss()
            }) {
                Text("Close")
                   .foregroundColor(.white)
                   .padding()
                   .background(Color.blue)
                   .cornerRadius(10)
            }
        }
       .padding()
    }
}
