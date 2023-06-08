//
//  TextFields.swift
//  helloworldIos
//
//  Created by Isai on 24/04/23.
//

import SwiftUI

struct TextFields: View {
    
    @State var textView: String = ""
    
    var body: some View {
        
        VStack {
            
            Text(textView)
            
           TextField("Type a Prhase", text: $textView)
            
            Button(action: {textView = "Hinata!"}, label: {
                Text("Click for a new text")}
            )
        }
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
