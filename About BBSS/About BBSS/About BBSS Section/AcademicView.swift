import SwiftUI
import WebKit

struct AcademicView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background color
                Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                    .ignoresSafeArea() // Ensure the color extends to the edges
                
                ScrollView {
                    VStack(spacing: 0) {
                        // Sticky Header
                        GeometryReader { geo in
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Academic Programmes")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(UIColor(red: 100/255, green: 80/255, blue: 20/255, alpha: 1.0)))
                                    .fixedSize(horizontal: false, vertical: true) // Allow vertical growth
                                
                                Text("In BBSS, the following subjects are offered as 'O' / 'N(A)' / 'N(T)' level examinable subjects.")
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                    .fixedSize(horizontal: false, vertical: true) // Allow vertical growth
                            }
                            .padding(.horizontal)
                            .padding(.top, 40)
                            .frame(maxWidth: .infinity, alignment: .leading) // Ensure full width
                            .background(Color(UIColor(red: 250/255, green: 240/255, blue: 180/255, alpha: 1.0))
                                .opacity(geo.frame(in: .global).minY <= 0 ? 1 : 0))
                            .offset(y: geo.frame(in: .global).minY <= 0 ? -geo.frame(in: .global).minY : 0)
                            .zIndex(1)
                        }
                        .frame(height: 140) // Increased height to accommodate wrapped text

                        // Rest of the scrollable content
                        VStack(spacing: 20) {
                            departmentView(title: "English & Literature", icon: "book.fill", subjects: [
                                "English", "Literature in English"
                            ], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/english-literature/")
                            
                            departmentView(title: "Mathematics", icon: "function", subjects: [
                                "Mathematics", "Additional Mathematics"
                            ], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/mathematics/")
                            
                            departmentView(title: "Science", icon: "flask.fill", subjects: [
                                "Biology", "Chemistry", "Physics", "Science (Physics, Chemistry)"
                            ], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/science/")
                            
                            departmentView(title: "Humanities", icon: "globe.europe.africa.fill", subjects: [
                                "Geography", "History", "Humanities (Social Studies, Geography)", "Humanities (Social Studies, History)"
                            ], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/humanities/")
                            
                            departmentView(title: "Mother Tongue", icon: "textformat.abc", subjects: [
                                "Chinese", "Higher Chinese", "Malay", "Hindi", "Tamil"
                            ], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/mother-tongue/")
                            
                            departmentView(title: "POA", icon: "paintbrush.fill", subjects: [
                                "Principles of Accounts"
                            ], urlString: "https://www.bukitbatoksec.moe.edu.sg/")
                            
                            departmentView(title: "Malay (Special Programme)", icon: "brain.head.profile.fill", subjects: ["Malay (Special Programme)"], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/malay-special-programme/")
                            departmentView(title: "Applied Subjects", icon: "hand.rays", subjects: ["Aesthetics","Music","Nutrition & Food Science","Design & Technology"], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/applied-subjects/")
                            
                            departmentView(title: "Character and Citizenship Education", icon: "character.magnify", subjects: ["CCE"], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/character-and-citizenship-education/")
                            
                            departmentView(title: "    Computer Applications Elements of Business Skills", icon: "laptopcomputer", subjects: ["Computer Applications (CPA)","Elements of Business Study (EBS)"], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/computer-applications-elements-of-business-sk/")
                            
                            departmentView(title: "Information and Communication Technology", icon: "pc", subjects: ["Upskilling BBSS"], urlString: "https://www.bukitbatoksec.moe.edu.sg/our-bbss-experience/Departments/information-and-communication-technology/")

                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
    
    // Custom Department View with a Title, Icon, List of Subjects, and Navigation Link
    @ViewBuilder
    func departmentView(title: String, icon: String, subjects: [String], urlString: String) -> some View {
        VStack(alignment: .center) {
            // Safely unwrapping the URL
            if let url = URL(string: urlString) {
                // NavigationLink for the department title
                NavigationLink(destination: WebView(url: url)) {
                    HStack(alignment: .center) {
                        Image(systemName: icon)
                            .foregroundColor(.blue)
                            .font(.title2)
                        
                        Text(title)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.bottom, 5)
            } else {
                // Handle the case where the URL is invalid
                Text("Invalid URL")
                    .foregroundColor(.red)
                    .padding(.bottom, 5)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                ForEach(subjects, id: \.self) { subject in
                    Text(subject)
                        .font(.body)
                        .foregroundColor(Color(UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1.0)))
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 5)
        }
        .padding(.vertical, 10) // Add padding between department sections for consistent alignment
    }
}

#Preview {
    AcademicView()
}
