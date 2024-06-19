import SwiftUI

struct TriviaQuizView: View {
    var body: some View {
        ZStack {
            // Background color that covers the whole view
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            VStack {
                Text("Trivia Quiz!")
                    .font(.title)
                    .padding()
                
                Text("""
                    Rules:
                    1) You will earn 400 points per question correctly answered
                    2) You lose 100 points per question incorrectly answered
                    3) Do not search up the answers on google
                    4) Have fun with the quiz!
                    """)
                
                NavigationLink(destination: QuizView()) {
                    Text("Start the Trivia Quiz!")
                        .padding()
                        .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .padding()
        }
    }
}

