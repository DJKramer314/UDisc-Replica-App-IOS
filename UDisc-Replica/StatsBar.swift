//
//  StatsBar.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct StatsBar: View {
    var body: some View {
        let total_rounds = 15
        let recent_rounds = 5
        let last_played = "Today"
        
        HStack {
            VStack {
                Text("\(total_rounds) Rounds")
                Text("Total")
            }
            
            Spacer()
            VStack {
                Text("\(recent_rounds) Rounds")
                Text("Last 30 Days")
            }
            
            Spacer()
            VStack {
                Text(last_played)
                Text("Last Played")
            }
        }
        .padding(.horizontal)
    }
}
