//
//  UserInfoView.swift
//  TinderClone
//
//  Created by macOS on 30/03/2024.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Ha Linh")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("20")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                
                Button {
                    print("DEBUG: show profile here..")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }

            }
            Text("Actress | Witch")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
