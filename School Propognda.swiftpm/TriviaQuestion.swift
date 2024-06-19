import SwiftUI

struct TriviaQuestions: View {
    @State private var Points: Int = 0
    
    @ObservedObject var Quiz = QuizStatus()
    
    class QuizStatus: ObservableObject {
        @Published var Correct: Bool = false
        @Published var Points: Int = 0
        @Published var NextQuestion: Bool = false
        @Published var QuestionResult: String = ""
        @Published var UpdatedPoints: Int = 0
        @Published var Answered: Bool = false
    }
    
    func CreateOption(Content: String, IsCorrect: Bool) -> some View {
        Button(action: {
            if IsCorrect {
                Quiz.Correct = true
                Points = Points + 400
            } else {
                Quiz.Correct = false
                Quiz.Points = Points - 100
            }
            Quiz.Answered = true
        }) {
            Text("\(Content)")
        }
        .padding()
        .cornerRadius(10)
        .frame(width: 450, height: 200)
        .buttonStyle(.borderedProminent)
        .disabled(Quiz.Answered)
    }
    
    func CreateQuestion(Headers: String, Option1: String, Status1: Bool, Option2: String, Status2: Bool, Option3: String, Status3: Bool, Option4: String, Status4: Bool) -> some View {
        VStack{
            Text("\(Headers)")
        }
        HStack{
            CreateOption(Content: Option1, IsCorrect: Status1)
            Spacer()
            CreateOption(Content: Option2, IsCorrect: Status2)
        }
        return HStack{
            CreateOption(Content: Option3, IsCorrect: Status3)
            Spacer()
            CreateOption(Content: Option4, IsCorrect: Status4)
        }
    }
    var body: some View {
        VStack {
            HStack {
                CreateQuestion(Headers: "Bukit Batok Best Guy", Option1: "Wei Ye", Status1: false, Option2: "Saumil Anad", Status2: true, Option3: "Daivik Rajesh", Status3: false, Option4: "Ehtan Dalgado", Status4: true)
            }
            VStack {
                if Quiz.Correct {
                    Text("Your Answer Is Correct")
                    Text("Points: \(Points)")
                } else {
                    Text("Your Answer is wrong!")
                    Text("Points: \(Quiz.Points)")
                }
                Button("Proceed to next question?"){
                    
                }
            }
        }
    }
}


