import SwiftUI

struct BBSSView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    // School name, logo, and image gallery
                    HStack(spacing: 16) {
                        Image("BBSS")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(.top)
                        Spacer()
                        TabView {
                            Image("Slideshow_1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 150)
                            Image("Slideshow_2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 150)
                            Image("Slideshow_3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 150)
                            Image("Slideshow_4")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 150)
                            // Add more images as needed
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .frame(maxWidth: .infinity, maxHeight: 150)
                        .padding(.top)
                    }
                    Text("Bukit Batok Secondary School")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    
                    // About Us text
                    Text("Welcome to Bukit Batok Secondary School! We are a vibrant learning community that provides a holistic education for our students. Our mission is to nurture well-rounded individuals who are intellectually curious, 富有 [Fùyǒu] (rich in), and compassionate. We offer a wide range of academic and co-curricular programmes to cater to the diverse needs of our students.")
                        .padding(.top)
                    
                    // School vision and mission (optional)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Vision:")
                            .font(.headline)
                        
                        Text("To be a school that empowers every student to achieve their full potential and become lifelong learners who contribute meaningfully to society.")
                        
                        Text("Mission:")
                            .font(.headline)
                        
                        Text("To provide a holistic and nurturing learning environment that equips students with the knowledge, skills, and values to thrive in the 21st century.")
                    }
                    .padding(.top)
                    
                    // Achievements
                    HStack(spacing: 16) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("Top performing school in the district (2023)")
                    }
                    .padding(.top)
                    HStack(spacing: 16) {
                        Image(systemName: "trophy")
                            .foregroundColor(.yellow)
                        Text("National Champions - Robotics Competition (2022)")
                    }
                    .padding(.top)
                    // Add more achievements as needed
                    
                    // Faculty and Staff
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Meet Our Faculty:")
                            .font(.headline)
                            .foregroundColor(Color.red) 
                        // Custom school color
                        HStack(spacing: 16) {
                            Image("BBSS")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Principal John Smith")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                Text("Masters in Education")
                                    .font(.caption)
                            }
                        }
                        // Add more faculty members as needed
                    }
                    .padding(.top)
                    
                    // Social Media Links
                    
                    // Contact information
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Contact")
                    }
                }
            }
        }
    }
}
