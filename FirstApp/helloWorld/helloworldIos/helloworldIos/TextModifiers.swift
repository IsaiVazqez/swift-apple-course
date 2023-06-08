//
//  TextModifiers.swift
//  helloworldIos
//
//  Created by Isai on 23/04/23.
//

import SwiftUI

struct TextModifiers: View {
    var body: some View {
        Text("Hello, World!!!")
            .font(.largeTitle)
            .foregroundColor(Color.purple)
            .frame(width: 300, height: 100, alignment: .center)
            .background(Color.gray)
        
    }
}

struct TextModifiers_Previews: PreviewProvider {
    static var previews: some View {
        TextModifiers()
    }
}
