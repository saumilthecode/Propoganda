import SwiftUI

struct ProgrammesView: View {
    var body: some View {
        VStack {
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()

            Text("Our Programmes")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 30)

            HStack {
                Button(action: {
                    // Add action for the Holistic Programmes button
                }) {
                    Text("Holistic Programmes")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(25)
                        .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                        .cornerRadius(30)
                }
                .padding(.trailing, 10)

                NavigationLink(destination: AcademicView()) {
                    Text("Accademic programmes")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(25)
                        .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                        .cornerRadius(30)
                }
                .padding(.trailing, 10)

                NavigationLink(destination: CCAView()) {
                    Text("Our CCA'S")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(25)
                        .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                        .cornerRadius(30)
                }
            }
            .padding(.top, 20)
        }
        .navigationTitle("Programmes")
    }
}

struct ProgrammesView_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammesView()
    }
}
