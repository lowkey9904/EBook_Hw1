//
//  AlbumRow.swift
//  EBook_Hw1
//
//  Created by Joker on 2020/3/25.
//  Copyright © 2020 ntoucs. All rights reserved.
//

import SwiftUI

struct AlbumRow: View {
    let album: Album
    var body: some View {
        HStack{
            Image(album.name)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipped()
            VStack(alignment: .leading){
            Text(album.name)
            .font(Font.system(size: 23, weight: .heavy))
            .foregroundColor(Color(red: Double(album.rgb[0])/255,green: Double(album.rgb[1])/255,blue: Double(album.rgb[2])/255))
            Text(album.date)
            .font(Font.system(size: 20))
            .foregroundColor(Color(red: Double(album.rgb[0])/255,green: Double(album.rgb[1])/255,blue: Double(album.rgb[2])/255))
            }
            Spacer()
        }.padding()
    }
}

struct AlbumRow_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRow(album: albums[2])
            
    }
}
