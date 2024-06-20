import SwiftUI

struct ProgrammesView: View {
    var body: some View {
        ZStack{
            Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                .ignoresSafeArea()
            
            VStack {
                Text("Our Programmes")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 30)
                VStack{
                    HStack {
                        Spacer()
                        NavigationLink(destination: HolisticView()) {
                            Text("Holistic Programmes")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                        
                        .padding(.trailing, 10)
                        Spacer()
                        NavigationLink(destination: AcademicView()) {
                            Text("Academic Programmes")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                        .padding(.trailing, 10)
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        NavigationLink(destination: CCAView()) {
                            Text("CCAs")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                            
                        }
                        Spacer()
                        NavigationLink(destination: IntrestGroupView()) {
                            Text("Intrest Groups")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                        }
                        Spacer()
                        
                    }
                    .padding(.top, 20)
                }
                .navigationTitle("Programmes")
            }
        }
        
    }
}
