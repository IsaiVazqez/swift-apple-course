//
//  Buttons.swift
//  helloworldIos
//
//  Created by Isai on 24/04/23.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack{
            Button("My first button", action: {
                print("pulse mi primer button")
            })
            
            Button("My second button") {
                print("pulse mi segundo button")
            }
            
            Button(action: {saludo()}, label: {
                Text("Using the handshake function").foregroundColor(.white)
                    .background(Color.blue)
            })
        }
    }
    
    func saludo() {
        print("Hii!!!")
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
