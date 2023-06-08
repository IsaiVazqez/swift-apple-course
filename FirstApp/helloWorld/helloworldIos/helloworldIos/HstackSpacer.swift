//
//  HstackSpacer.swift
//  helloworldIos
//
//  Created by Isai on 25/04/23.
//

import SwiftUI

struct HstackSpacer: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10){
            Text("1").border(Color.black)
            Text("2").border(Color.black)
            Text("3").border(Color.black)
            HStack(alignment: .top, spacing: 0){
                Text("A").frame(width: 100,
                                height: 100,
                alignment: .center).border(Color.black)
                Text("B").border(Color.black)
                Text("C").border(Color.black)
            }.background(Color.red)
        }.background(Color.blue)
    }
}

struct HstackSpacer_Previews: PreviewProvider {
    static var previews: some View {
        HstackSpacer()
    }
}
