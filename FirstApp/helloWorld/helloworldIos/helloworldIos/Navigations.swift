//
//  Navigations.swift
//  helloworldIos
//
//  Created by Isai on 26/04/23.
//

import SwiftUI

struct Navigations: View {
    
    @State private var isDividerActive: Bool = false
    
    var body: some View {
        NavigationView{
            
            VStack {
                Text("Wassuupp").navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar(content: {
                        ToolbarItem(placement: .navigationBarTrailing){
                            
                            Button(action: {}, label: {
                                Text("+")
                            })
                        }
                    })
                    
                NavigationLink("Wasup in second screen", destination: TabViews() )
                
                NavigationLink(destination: Buttons(),
                               isActive: $isDividerActive,
                               label: {
                                Text("Nvigate")
                })
            }
        }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
