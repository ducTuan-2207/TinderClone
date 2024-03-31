//
//  ProfileNV.swift
//  TinderClone
//
//  Created by macOS on 01/04/2024.
//

import SwiftUI

struct ProfileNV: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Họ và tên: Trần Hà Linh")
                .font(.headline)
            
            Text("Năm sinh: 2002")
                .font(.subheadline)
            
            Text("Số đo 3 vòng: 90-90-90")
                .font(.subheadline)
            
            Text("Cast: 2M/S")
                .font(.subheadline)
            
            Button(action: {
                // Xử lý khi nút được nhấn
            }) {
                Label("BOOK", systemImage: "book")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 3)
            }
        }
        .padding()
    }
}


struct ProfileNV_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNV()
    }
}
