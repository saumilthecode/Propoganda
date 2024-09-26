import SwiftUI
import SPConfetti

struct QuizView: View {
    
    var questions = [
        Questions(Question: "Where is BBSS located?", Option1: "East Avenue 9", Option2: "South Avenue 5", Option3: "North Avenue 10", Option4: "West Avenue 8", Answer: 4, plainTextAnswer: "West Avenue 8"),
        Questions(Question: "How many classes do we have in our entire school?", Option1: "7", Option2: "29", Option3: "28", Option4: "4", Answer: 2, plainTextAnswer: "29"),
        Questions(Question: "When was the school founded?", Option1: "1989", Option2: "2001", Option3: "2005", Option4: "1986", Answer: 4, plainTextAnswer: "1986"),
        Questions(Question: "Who is our current principal?", Option1: "Mdm Yaw", Option2: "Ms Shirley Lee", Option3: "Mr Phua Huat Chuan", Option4: "Mr Yazid", Answer: 2, plainTextAnswer: "Ms Shirley Lee"),
        Questions(Question: "What is the BBSS Motto", Option1: "Be Our Best", Option2: "Be My Best", Option3: "Be Your Best", Option4: "Being The Best", Answer: 1, plainTextAnswer: "Be Our Best"),
        Questions(Question: "What is one thing that is unique about BBSS", Option1: "Better Facilities", Option2: "Habits of Mind", Option3: "Co-Curricular Activities", Option4: "Unique Activities", Answer: 2, plainTextAnswer: "Habits of Mind"),
        Questions(Question: "When does BBSS end on a normal day", Option1: "1:30", Option2: "2:00", Option3: "2:10", Option4: "3:00", Answer: 3, plainTextAnswer: "2:10"),
        Questions(Question: "What is the closest school to BBSS?", Option1: "Bukit Batok Primary School", Option2: "Millenia Institute", Option3:"Eden School", Option4: "Princess Elizabeth Primary", Answer: 4, plainTextAnswer: "Princess Elizabeth Primary"),
        Questions(Question: "What is special about the Bukit Batok Neighbourhood?", Option1: "First Dry Market", Option2:"First Wet Market", Option3: "BBSS", Option4:"Nothing", Answer: 1, plainTextAnswer: "First Dry Market")
    ]
    
    @State var Progress = Double(0.0)
    @State var questionIndex = 0
    @State var QuestionsDone = Int(0)
    @State var correctAnswers = Int(0)
    @State var selectedAnswer = Int(0)
    @State var isCorrect = Bool(false)
    @State private var showingSheet = false
    @State private var showingFeedback = false
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    ProgressView(value: Progress, total: 9)
                        .progressViewStyle(.linear)
                        .tint(.blue)
                        .scaleEffect(x: 0.8, y: 0.3)
                        .padding()
                        .offset(y: -200)
                    
                    Text("You are \(QuestionsDone) / 9 questions done")
                        .bold()
                        .italic()
                        .offset(y: -400)
                        .padding(50)
                }
                
                Text(questions[questionIndex].Question)
                    .font(.title2)
                    .bold()
                    .padding()
                    .offset(y: -100)
                
                HStack(spacing: 20) {
                    Button(action: {
                        selectedAnswer = 1
                        handleAnswer()
                    }) {
                        Text(questions[questionIndex].Option1)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        selectedAnswer = 2
                        handleAnswer()
                    }) {
                        Text(questions[questionIndex].Option2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(10)
                    }
                }
                .offset(y: -50)
                
                HStack(spacing: 20) {
                    Button(action: {
                        selectedAnswer = 3
                        handleAnswer()
                    }) {
                        Text(questions[questionIndex].Option3)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        selectedAnswer = 4
                        handleAnswer()
                    }) {
                        Text(questions[questionIndex].Option4)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(10)
                    }
                }
                .offset(y: 0)
                
            }
            .sheet(isPresented: $showingSheet) {
                ScoreView(questionsCorrect: correctAnswers)  // Pass correct answers to ScoreView
                    .environmentObject(navigationManager)
            }
            .alert(isPresented: $showingFeedback) {
                Alert(
                    title: Text(isCorrect ? "Correct!" : "Incorrect"),
                    message: Text(isCorrect ? "You got it right!" : "The correct answer is \(questions[questionIndex].plainTextAnswer)"),
                    dismissButton: .default(Text("Next Question"), action: moveToNextQuestion)
                )
            }
        }
        .onAppear {
            Progress = Double(QuestionsDone)
        }
    }
    
    private func handleAnswer() {
        isCorrect = selectedAnswer == questions[questionIndex].Answer
        if isCorrect {
            correctAnswers += 1
            SPConfetti.startAnimating(.centerWidthToDown, particles: [.triangle, .arc], duration: 1)
        }
        showingFeedback = true
    }
    
    private func moveToNextQuestion() {
        QuestionsDone += 1
        if QuestionsDone == questions.count {
            showingSheet = true
        } else {
            questionIndex = (questionIndex + 1) % questions.count
            Progress = Double(QuestionsDone)
            selectedAnswer = 0
        }
    }
}
#Preview {
    QuizView()
}
