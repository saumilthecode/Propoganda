import SwiftUI

struct TriviaQuizView: View {
    var body: some View {
        Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
            .ignoresSafeArea()

        Text("Trivia Quiz!")
            .font(.title)
            .padding()
    }
}
