//
//  PreviewView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct PreviewView: View {
    
    @StateObject var appData = AppData()
    
    var body: some View {
        TabView {
            RoundsView()
                .tabItem {
                    VStack {
                        Image(systemName: "note.text")
                        Text("Rounds")
                    }
                }
            MoreView()
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                        Text("More")
                    }
                }
        }.environmentObject(appData)
    }
}
