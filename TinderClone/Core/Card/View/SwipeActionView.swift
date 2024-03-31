//
//  SwipeActionView.swift
//  TinderClone
//
//  Created by macOS on 31/03/2024.
//

import SwiftUI

struct SwipeActionView: View {
    @Binding var xOffset: CGFloat
    let screenCutOff: CGFloat
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
                .opacity(Double(xOffset/screenCutOff))
            Spacer()
            Text("NOPE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset/screenCutOff) * -1)
            
        }
        .padding(40)
    }
}

struct SwipeActionView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionView(xOffset: .constant(20), screenCutOff: 1)
    }
}
