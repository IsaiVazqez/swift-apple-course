//
//  ZstackPadding.swift
//  helloworldIos
//
//  Created by Isai on 25/04/23.
//

import SwiftUI

struct ZstackPadding: View {
    
    @State var curso: String = "Ioss"
    
    var body: some View {
        ZStack{
            Color.black
            
  
            VStack(alignment: .center, spacing: 10){
                
                CatImage()
                
                ZStack {
                    TextField("Curso", text: $curso )
                }
                
                Text("1").border(Color.black).monospaced().accentColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                Text("2").border(Color.black)
                Text("3").border(Color.black)
                HStack(alignment: .top, spacing: 0){
                    Text("A").frame(width: 100,
                                    height: 100,
                    alignment: .center).border(Color.black)
                    Text("B").border(Color.black)
                    Text("C").border(Color.black)
                }.background(Color.red)
            }.background(Color.gray)

        }.ignoresSafeArea()
    }
}

struct CatImage: View {
    
    var body: some View {
        Image("Cat").resizable()
            .aspectRatio(contentMode: .fit).frame(
                width: 300, height: 300, alignment: .center)
            .padding(.bottom, 2.0)
    }
}


struct ZstackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZstackPadding()
    }
}
