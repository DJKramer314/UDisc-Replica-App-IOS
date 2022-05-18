//
//  UDisc_ReplicaApp.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

@main
struct UDisc_ReplicaApp: App {
    var body: some Scene {
        WindowGroup {
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
}
