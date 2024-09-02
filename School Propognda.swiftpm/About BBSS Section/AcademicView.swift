import SwiftUI

struct AcademicView: View {
    var body: some View {
        ZStack {
            // Background color
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea() // Ensure the color extends to the edges
            
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Academic Programmes")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                    }
                    
                    Text("In BBSS the following Subjects are offered as 'O' / 'N(A)' / 'N(T)' level examinable subjects")
                        .font(.headline)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text("Additional Mathematics")
                        Text("Art")
                        Text("Biology")
                        Text("Chemistry")
                        Text("Chinese")
                        Text("Computer Applications")
                        Text("Design and Technology")
                        Text("Exercise and Sports Science")
                        Text("Elements of Business Skills")
                        Text("English")
                        Text("Geography")
                        Text("Higher Chinese")
                        Text("Hindi")
                        Text("Humanities (Social Studies, Geography)")
                        Text("Humanities (Social Studies, History)")
                        Text("Literature in English")
                        Text("Malay")
                        Text("Malay (Special Programme)")
                        Text("Mathematics")
                        Text("Music")
                        Text("Nutrition and Food Science")
                        Text("Physics")
                        Text("Principles of Accounts")
                        Text("Science (Physics, Chemistry)")
                        Text("Tamil")
                    }
                    .padding()
                    .font(.body)
                }
                .padding()
            }
        }
    }
}

