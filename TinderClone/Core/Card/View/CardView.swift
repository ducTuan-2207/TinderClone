//
//  CardView.swift
//  TinderClone
//
//  Created by macOS on 30/03/2024.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset:CGFloat = 0

    @State private var degrees:Double = 0
   
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top){
                Image("1")
                    .resizable()
                    .scaledToFill()
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

    }
}
// Xử lý giá trị độ dịch chuyển theo chiều rộng (width) sau khi gesture kết thúc
private extension CardView{
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value){
        let width = value.translation.width
        if abs(width) <= abs(SizeContants.screenCutoff) {
            xOffset = 0;
            degrees = 0;
        }
    }
    
}
private extension CardView{
    
   
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
