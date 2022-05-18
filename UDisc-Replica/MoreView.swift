//
//  MoreView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/18/22.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        VStack {
            Header()
            
            NavigationView {
                Form {
                    Section(header: Text("Play")) {
                        NavigationLink(destination: Header()) {
                            Text("Scorecards")
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
}