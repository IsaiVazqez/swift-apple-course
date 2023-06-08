//
//  Images.swift
//  helloworldIos
//
//  Created by Isai on 24/04/23.
//

import SwiftUI

struct Images: View {
    var body: some View {
            
        VStack{
            Image("Cat").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100,
                       alignment: .center)
            
            Image("Cat").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100,
                       alignment: .center)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
            Image("Cat").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100,
                       alignment: .center).opacity(2.8)
            
            Button(action: {print("I touch the cat")}, label:             {Image("Cat").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100,
                       alignment: .center).opacity(2.8)}
                   )

            Image(systemName: "volleyball.fill")

            
        }
        
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
