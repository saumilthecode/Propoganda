import SwiftUI

struct UniformedGroupsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    Text("Uniformed Groups")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.top, 40)
                    HStack(spacing: 20) {
                        NavigationLink(destination: NCCLandView()) {
//                            ClubButton(title: " ***NCC (Land) *** + NCC (Sea)")
                            Text("`NCC (Land)` + NCC (Sea)")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                                .padding(.horizontal)

                        }
                        NavigationLink(destination: NCCSeaView()) {
//                            ClubButton(title: "NCC (Land) + ***NCC (Sea)*** ")
                            Text("NCC (Land) + `NCC (Sea)`")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(25)
                                .frame(maxWidth: .infinity)
                                .background(Color(UIColor(red: 152/255, green: 29/255, blue: 32/255, alpha: 1.0)))
                                .cornerRadius(30)
                                .padding(.horizontal)

                        }
                    }
                    HStack(spacing: 20) {
                        NavigationLink(destination: BBView()) {
                            ClubButton(title: "Boys' Brigade")
                        }
                        NavigationLink(destination: GBView()) {
                            ClubButton(title: "Girls' Brigade")
                        }
                    }
                    HStack(spacing: 20) {
                        ClubButton(title: "NPCC")
                    }
                }
            }
        }
    }
}

struct NCCLandView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/uniformed-groups/ncc-land/")!)
            }
            .navigationTitle("NCC Land Website")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NCCSeaView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://docs.google.com/presentation/d/16ME0_RB7u2SM-7CNcPF1orldsacLwosC42kEnU3I458/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("NCC Sea Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct BBView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/uniformed-groups/boys-brigade/")!)
            }
            .navigationTitle("Boys Brigade Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct GBView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://docs.google.com/presentation/d/1zKjJFjeGG_tyFHlFkUvRlMOC6rbEAHkk/pub?start=true&loop=true&delayms=3000")!)
            }
            .navigationTitle("Girls Brigade Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NPCCView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea()
                
                WebView(url: URL(string: "https://www.bukitbatoksec.moe.edu.sg/uniformed-groups/npcc/")!)
            }
            .navigationTitle("National Police Cadet Corps Presentation")
            .foregroundColor(Color.black)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
