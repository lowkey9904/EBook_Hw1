//
//  BackGround.swift
//  EBook_Hw1
//
//  Created by Joker on 2020/3/25.
//  Copyright © 2020 ntoucs. All rights reserved.
//

import SwiftUI

struct BackGround: View {
    var body: some View {
        Image("告五人")
        .resizable()
        .scaledToFill()
        .frame(minWidth: 0, maxWidth: .infinity,  minHeight: 0,  maxHeight: .infinity)
        .clipped()
        .blur(radius: 10)
        .opacity(0.3)
    }
}

struct BackGround_Previews: PreviewProvider {
    static var previews: some View {
        BackGround()
    }
}
