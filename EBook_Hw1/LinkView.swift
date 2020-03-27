//
//  LinkView.swift
//  EBook_Hw1
//
//  Created by Joker on 2020/3/27.
//  Copyright © 2020 ntoucs. All rights reserved.
//

import SwiftUI

struct LinkView: View {
    @State private var showWebPageF = false
    @State private var showWebPageY = false
    @State private var showWebPageI = false
    @State private var showWebPageS = false
    @State private var showWebPageA = false
    @State private var showWebPageK = false
    var body: some View {
        ZStack
        {
           Image("告五人")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity,  minHeight: 0,  maxHeight: .infinity)
            .clipped()
            .blur(radius: 10)
            .opacity(0.3)
        VStack{
        HStack{
            Button(action:{
                self.showWebPageY = true
            }){
                Image("youtubeicon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height:70)
            }.buttonStyle(PlainButtonStyle())
            .sheet(isPresented: $showWebPageY) {
                SafariView(url: URL(string: "https://www.youtube.com/channel/UCj0Dl_XdIoAKzyfbPEu9WMw/featured")!)
            }
            Spacer()
            Button(action:{
                self.showWebPageF = true
            }){
                Image("facebookicon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height:70)
            }.buttonStyle(PlainButtonStyle())
            .sheet(isPresented: $showWebPageF) {
                SafariView(url: URL(string: "https://www.facebook.com/accusefive/")!)
            }
            Spacer()
            Button(action:{
                self.showWebPageI = true
            }){
                Image("instagramicon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height:70)
            }.buttonStyle(PlainButtonStyle())
            .sheet(isPresented: $showWebPageI) {
                SafariView(url: URL(string: "https://www.instagram.com/accusefive/?hl=zh-tw")!)
            }
           
        }
        .padding(.bottom)
        HStack{
            Button(action:{
                self.showWebPageS = true
            }){
                Image("spotifyicon1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height:70)
            }.buttonStyle(PlainButtonStyle())
            .sheet(isPresented: $showWebPageS) {
                SafariView(url: URL(string: "https://open.spotify.com/artist/6xErgeZYatiaQ36SB5bvi8")!)
            }
            Spacer()
            Button(action:{
                self.showWebPageA = true
            }){
                Image("applemusicicon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height:70)
            }.buttonStyle(PlainButtonStyle())
            .sheet(isPresented: $showWebPageA) {
                SafariView(url: URL(string: "https://music.apple.com/hk/artist/%E5%91%8A%E4%BA%94%E4%BA%BA/1284151651")!)
            }
            Spacer()
            Button(action:{
                self.showWebPageK = true
            }){
                Image("kkboxicon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height:70)
            }.buttonStyle(PlainButtonStyle())
            .sheet(isPresented: $showWebPageK) {
                SafariView(url: URL(string: "https://www.kkbox.com/tw/tc/artist/TpL0DQUR-FEMIS0F021eO08K-index-1.html")!)
            }
        }
        }
    }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
