//
//  CardView.swift
//  TinderClone
//
//  Created by macOS on 30/03/2024.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var shouldNavigate: Bool = false
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0
    @State private var mokeImage = [
        "1",
        "6",
        "7"
    ]
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                ZStack(alignment: .top){
                    Image(mokeImage[currentImageIndex])
                        .resizable()
                        .scaledToFill()
                        .overlay {
                            ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: mokeImage.count)
                        }
                        .frame(width: SizeContants.cardWidth, height: SizeContants.cardHeight)
                    SwipeActionView(xOffset: $xOffset, screenCutOff: SizeContants.screenCutoff)
                }
                    
                UserInfoView()
                    .padding(.horizontal)
            }
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(x: xOffset)
            .rotationEffect(.degrees(degrees))
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation(Animation.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0)) {
                            xOffset = value.translation.width
                            degrees = Double(value.translation.width/25)
                        }
                    }).onEnded({ value in
                        onDragEnded(value)
                    })
            )
            
            NavigationLink(destination: ProfileNV()) {
                Text("Check thông tin")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .font(.caption)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(Color.red)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            }
            .frame(width: 140, height: 40)
        }
    }
    
    // Xử lý giá trị độ dịch chuyển theo chiều rộng (width) sau khi gesture kết thúc
    private func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        if abs(width) <= abs(SizeContants.screenCutoff) {
            xOffset = 0
            degrees = 0
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
