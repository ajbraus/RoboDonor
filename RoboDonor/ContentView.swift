//
//  ContentView.swift
//  RoboDonor
//
//  Created by Adam Braus on 4/21/20.
//  Copyright © 2020 Adam Braus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TabNews()
                .tabItem {
                    Image("seeding")
                        .renderingMode(.template)
                    Text("News")
                }
            
            TabFunds()
                .tabItem {
                    Image("tree-planting")
                        .renderingMode(.template)
                    Text("Our Funds")
                }
            
            TabProfile()
                .tabItem {
                    Image("sprout")
                        .renderingMode(.template)
                    Text("Your Impact")
                }
            
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
