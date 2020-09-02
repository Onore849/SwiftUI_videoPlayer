//
//  ContentView.swift
//  videoPlayer
//
//  Created by 野澤拓己 on 2020/09/02.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            player().frame(height: UIScreen.main.bounds.height / 3)
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct player: UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        let url = "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"
        
        let player1 = AVPlayer(url: URL(string: url)!)
        controller.player = player1
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
        
    }
    
}

// the white space for ur personality 
