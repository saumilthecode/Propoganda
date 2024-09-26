//
//  360View.swift
//  School Propoganda
//
//  Created by Saumil Anand on 21/9/24.
//

//import SwiftUI
//import AVKit
//import YouTubeKit
//import Swifty360Player
//
//// MARK: - Swifty360PlayerView
//struct Swifty360PlayerView: UIViewControllerRepresentable {
//    let videoID: String
//
//    func makeUIViewController(context: Context) -> Swifty360ViewController {
//        let motionManager = Swifty360MotionManager.shared
//        let player = AVPlayer()
//        let viewController = Swifty360ViewController(withAVPlayer: player, motionManager: motionManager)
//        
//        // Fetch YouTube video info and play with AVPlayer
//        fetchYouTubeVideo(videoID: videoID, player: player)
//        
//        return viewController
//    }
//    
//    func updateUIViewController(_ uiViewController: Swifty360ViewController, context: Context) {
//        // No update logic needed for now.
//    }
//    
//    // Helper function to fetch the video using YouTubeKit and play it with AVPlayer
//    private func fetchYouTubeVideo(videoID: String, player: AVPlayer) {
//        // Create a YouTube model instance
//        let youtubeModel = YouTubeModel()
//        
//        // Fetch the video information by video ID
//        // Example assuming 'videoId' needs to go as part of request body or headers, not the 'ContentTypes' enum
//        VideoInfosResponse.sendNonThrowingRequest(
//            youtubeModel: youtubeModel,
//            data: [.json: ["videoId": videoID]] // Assuming .json is a valid content type
//        ) { result in
//            // Handle the response
//        }
//            switch result {
//            case .success(let videoInfo):
//                // Extract a suitable video stream URL
//                struct StreamingData: Codable {
//                    let formats: [Format]
//                }
//
//                struct Format: Codable {
//                    let url: String
//                }
//
//                struct VideoInfosResponse: Codable {
//                    let streamingData: StreamingData?
//                }
//
//                // Usage
//                if let streamURL = videoInfo.streamingData?.formats.first?.url {
//                    // Use streamURL
//                }
//                    let playerItem = AVPlayerItem(url: URL(string: streamURL)!)
//                    player.replaceCurrentItem(with: playerItem)
//                    player.play()
//                } else {
//                    print("No suitable stream URL found for the video.")
//                }
//            case .failure(let error):
//                print("Error fetching video: \(error.localizedDescription)")
//            }
//        }
//// MARK: - Main 360 View
//struct ThreeHundredAndSixtyView: View {
//    // Add YouTube video IDs here
//    let videoIDs = [
//        "wdLs2bsvtRQ", "JdLCGbwGErQ", "fViWbR0oyyQ",
//        "uyDHfg9Pa6s", "CjBqsFbhyEI", "LYVZn6DrCCQ",
//        "RHctoVDm7HI", "eOoVCX47Dlc", "RYvKuRrg_gk",
//        "OmIjS2FfwiQ", "KfXUc8oNk6o", "B-iEMWrx1EA",
//        "wvTeLWNsXto"
//    ]
//    
//    @State private var selectedVideoIndex = 0
//    
//    var body: some View {
//        VStack {
//            // Swifty360Player view
//            Swifty360PlayerView(videoID: videoIDs[selectedVideoIndex])
//                .edgesIgnoringSafeArea(.all)
//            
//            // Button to switch to the next video
//            Button(action: {
//                selectedVideoIndex = (selectedVideoIndex + 1) % videoIDs.count
//            }) {
//                Text("Next Video")
//                    .padding()
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(8)
//            }
//        }
//    }
//}
//#Preview {
//    ThreeHundredAndSixtyView()
//}
