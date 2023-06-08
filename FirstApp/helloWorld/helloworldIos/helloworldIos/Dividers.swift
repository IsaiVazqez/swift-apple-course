//
//  Dividers.swift
//  helloworldIos
//
//  Created by Isai on 24/04/23.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
    
        VStack {
            
            Circle().frame(width: 100, height: 100, alignment: .center)
            
            Text("Circle")
            
            Divider().frame(height: 8) .background(Color.gray)
            
            Rectangle().frame(width: 200, height: 100, alignment: .center)
        
            Text("Rectangle")

        }
    }
}

struct Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Dividers()
    }
}
