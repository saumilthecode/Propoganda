import SwiftUI


struct QuizView: View {
    
    var questions = [
        Questions(Question: "Where is BBSS located?", Option1: "East Avenue 9", Option2: "South Avenue 5", Option3: "North Avenue 10", Option4: "West Avenue 8", Answer: 4, plainTextAnswer: "West Avenue 8"),
        Questions(Question: "How many classes do we have in our entire school?", Option1: "7", Option2: "29", Option3: "28", Option4: "4", Answer: 2, plainTextAnswer: "29"),
        Questions(Question: "When was the school founded?", Option1: "1989", Option2: "2001", Option3: "2005", Option4: "1986", Answer: 4,plainTextAnswer: "1986"),
        Questions(Question: "Who is our current principal?", Option1: "Mdm Yaw", Option2: "Ms Shirley Lee", Option3: "Mr Phua Huat Chuan", Option4: "Mr Yazid", Answer: 2,plainTextAnswer: "Ms Shirley Lee"),
        Questions(Question: "Daivik Rajesh", Option1: "Daivik Rajesh", Option2: "Daivik Rajesh", Option3: "Daivik Rajesh", Option4: "Daivik Rajesh", Answer: 3, plainTextAnswer: "Daivik Rajesh")
    ]
    
    @State var Progress = Double(0.0)
    @State var questionIndex = 0
    @State var QuestionsDone = Int(0)
    @State var showAlert = false
    @State var isAnswered = false
    @State var selectedAnswer = Int(0)
    
    var body: some View {
        
        ZStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                VStack{
                    // Progress Bar
                    ProgressView(value: Progress, total: 5)
                        .progressViewStyle(.linear)
                        .tint(.blue)
                        .scaleEffect(x: 0.8, y: 0.3)
                        .padding()
                        .offset(y: -200)
                    Text ("You are \(QuestionsDone) / 5 questions done")
                        .bold()
                        .italic()
                        .offset(y: -400)
                        .padding(50)

                    
                }
                // Question Text
                Text(questions[questionIndex].Question)
                    .font(.title2)
                    .bold()
                    .padding()
                    .offset(y: -100)
                
                // Option Buttons
                HStack(spacing: 20) {
                    Button(action: {
                        selectedAnswer = 1
                        showAlert = true
                        isAnswered = true
                    }) {
                        Text(questions[questionIndex].Option1)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        selectedAnswer = 2
                        showAlert = true
                        isAnswered = true
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
                        showAlert = true
                        isAnswered = true
                    }) {
                        Text(questions[questionIndex].Option3)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        selectedAnswer = 4
                        showAlert = true
                        isAnswered = true
                    }) {
                        Text(questions[questionIndex].Option4)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                            .cornerRadius(10)
                    }
                }
                .offset(y: 0)
                
                // Progress Text
                Text("You are \(QuestionsDone) / 5 questions done")
                    .font(.headline)
                    .padding()
                    .offset(y: 50)
                
            }
            
            // Alert for answer
            .alert(isPresented: $showAlert) {
                if selectedAnswer == questions[questionIndex].Answer {
                    return Alert(title: Text("Correct!"), message: Text("You got it right!"), dismissButton: .default(Text("Next"), action: {
                        moveToNextQuestion()
                    }))
                } else {
                    return Alert(title: Text("Incorrect!"), message: Text("The correct answer is: \(questions[questionIndex].plainTextAnswer)"), dismissButton: .default(Text("Next"), action: {
                        moveToNextQuestion()
                    }))
                }
            }
        }
        .onAppear {
            Progress = Double(QuestionsDone)
        }
    }
    
    private func moveToNextQuestion() {
        if isAnswered {
            QuestionsDone += 1
            questionIndex = (questionIndex + 1) % questions.count
            Progress = Double(QuestionsDone)
            isAnswered = false
        }
    }
}
