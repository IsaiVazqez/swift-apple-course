//
//  Player.swift
//  helloworldIos
//
//  Created by Isai on 26/04/23.
//

import SwiftUI
import AVKit

struct Player: View {
    
    @State var isPlayerActive: Bool = false
    
    var body: some View {
            
        NavigationView {
            
            VStack{
                
                Button(action: { isPlayerActive = true
                }) {
                    ZStack {
                        Image("cuphead").resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "play.fill").foregroundColor(.white)
                    }
                    
                    NavigationLink(destination:
                                    VideoPlayer(player: AVPlayer(url: URL(string:"https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4")!)).frame(
                                        width: 420, height: 360, alignment: .center),
                    isActive: $isPlayerActive,
                    label: {EmptyView()}
                    )
                }
                
    
            }
        }

    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
