//
//  SizeContants.swift
//  TinderClone
//
//  Created by macOS on 31/03/2024.
//

import SwiftUI
struct SizeContants {
   static var screenCutoff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
    
  static var cardWidth: CGFloat {
        UIScreen.main.bounds.width-20
    }
   static var cardHeight: CGFloat {
        UIScreen.main.bounds.height/1.45
    }
}
