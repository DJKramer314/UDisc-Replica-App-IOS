//
//  StatsBar.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct StatsBar: View {
    
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        let total_rounds = appData.userRounds.count
        let recent_rounds = 5
        let last_played = "Today"
        
        HStack {
            VStack {
                Text("\(total_rounds) Rounds")
                    .font(.body)
                    .fontWeight(.semibold)
                Text("Total")
                    .font(.footnote)
                    .fontWeight(.light)
                    
            }
            
            Spacer()
            
            VStack {
                Text("\(recent_rounds) Rounds")
                    .font(.body)
                    .fontWeight(.semibold)
                Text("Last 30 Days")
                    .font(.footnote)
                    .fontWeight(.light)
            }
            
            Spacer()
            
            VStack {
                Text(last_played)
                    .font(.body)
                    .fontWeight(.semibold)
                Text("Last Played")
                    .font(.footnote)
                    .fontWeight(.light)
            }
        }
        .padding(.horizontal)
    }
}
