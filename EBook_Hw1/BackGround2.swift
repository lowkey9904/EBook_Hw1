//
//  BackGround2.swift
//  EBook_Hw1
//
//  Created by Joker on 2020/3/25.
//  Copyright © 2020 ntoucs. All rights reserved.
//

import SwiftUI

struct BackGround2: View {
    var body: some View {
        Image("吿五人1")
        .resizable()
        .scaledToFill()
        .frame(minWidth: 0, maxWidth: .infinity,  minHeight: 0,  maxHeight: .infinity)
        .clipped()
        .opacity(0.69)
        .edgesIgnoringSafeArea(.all)
    }
}

struct BackGround2_Previews: PreviewProvider {
    static var previews: some View {
        BackGround2()
    }
}
