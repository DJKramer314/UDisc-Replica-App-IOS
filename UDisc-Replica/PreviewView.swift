//
//  PreviewView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct PreviewView: View {
    var body: some View {
        TabView {
            RoundsView()
                .tabItem {
                    VStack {
                        Image(systemName: "note.text")
                        Text("Rounds")
                    }
                }
        }
    }
}
