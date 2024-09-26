//
//  360View.swift
//  School Propoganda
//
//  Created by Saumil Anand on 21/9/24.
//

import SwiftUI
import AVKit
import Swifty360Player

struct Swifty360ViewWrapper: UIViewRepresentable {
    var videoURL: URL
    
    func makeUIView(context: Context) -> Swifty360View {
        let player = AVPlayer(url: videoURL)
        let motionManager = Swifty360MotionManager.shared
        
        let swifty360View = Swifty360View(withFrame: .zero, player: player, motionManager: motionManager)
        swifty360View.setup(player: player, motionManager: motionManager)
        player.play()
        
        return swifty360View
    }
    
    func updateUIView(_ uiView: Swifty360View, context: Context) {}
}

struct threehundredandsixtyview: View {
    let videoURL = URL(string: "https://youtu.be/CjBqsFbhyEI?si=PzKsJlhRnYkHOars")!
    
    var body: some View {
        Swifty360ViewWrapper(videoURL: videoURL)
            .frame(width: 300, height: 300)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    threehundredandsixtyview()
}
