//
//  SwipeActionView.swift
//  TinderClone
//
//  Created by macOS on 31/03/2024.
//

import SwiftUI

struct SwipeActionView: View {
    var body: some View {
        HStack {
            Text("Like")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.green)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(-45))
        }
    }
}

struct SwipeActionView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionView()
    }
}
