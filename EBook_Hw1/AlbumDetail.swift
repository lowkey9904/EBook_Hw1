//
//  AlbumDetail.swift
//  EBook_Hw1
//
//  Created by Joker on 2020/3/25.
//  Copyright © 2020 ntoucs. All rights reserved.
//

import SwiftUI

struct AlbumDetail: View {
    @State private var showWebPage = false
    let album: Album
    var body: some View {
        ZStack{
            Color(red: Double(album.rgb[0])/255,green: Double(album.rgb[1])/255,blue: Double(album.rgb[2])/255)
            .opacity(0.3)
            .edgesIgnoringSafeArea(.all)
        VStack{
            Image(album.name)
            .resizable()
            .scaledToFill()
            .frame(width: 270, height: 270)
            .clipped()
            .padding(.bottom)
            Text(album.info)
            .font(Font.system(size: 18, weight: .heavy))
            .foregroundColor(Color(red: Double(album.rgb[0])/255,green: Double(album.rgb[1])/255,blue: Double(album.rgb[2])/255))
            Button(action:{
                self.showWebPage = true
            }){
                Image("spotifyicon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height:50)
                    .foregroundColor(Color.white)
            }.sheet(isPresented: $showWebPage) {
                SafariView(url: URL(string: self.album.url)!)
            }.padding(.leading, 310)
            Spacer()
        }.padding()
        }
    }
}

struct AlbumDetail_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetail(album: albums[2])
    }
}
