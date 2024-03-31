//
//  ContentView.swift
//  TinderClone
//
//  Created by macOS on 29/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
               CardView()
                MainTabView()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
