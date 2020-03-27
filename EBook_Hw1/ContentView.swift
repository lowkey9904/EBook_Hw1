//
//  ContentView.swift
//  EBook_Hw1
//
//  Created by Joker on 2020/3/24.
//  Copyright © 2020 ntoucs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List(albums.indices){ (item) in
        NavigationLink(destination: AlbumDetail(album: albums[item])){
            AlbumRow(album: albums[item])
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
