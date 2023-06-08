//
//  TabViews.swift
//  helloworldIos
//
//  Created by Isai on 25/04/23.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView{
            TextModifiers().tabItem {
                Text("Home")
                Image(systemName: "moon")
            }
            Dividers().tabItem {
                Text("Home")
                Image(systemName: "play")
            }
            ZstackPadding().tabItem {
                Text("Home")
                Image(systemName: "terminal")
            }
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
