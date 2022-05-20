//
//  StatsBar.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct StatsBar: View {
    
    @EnvironmentObject var appData: AppData
    
    func computeRecentRounds(recentRounds: [Card]) -> Int {
        var counter = 0
        for scorecard in recentRounds {
            if scorecard.date.timeIntervalSinceNow > -2628000 { //If the scorecard was within 30 days
                counter += 1
            }
        }
        print(counter)
        return counter
    }
    
    var body: some View {
        let total_rounds = appData.userRounds.count
        let recent_rounds = computeRecentRounds(recentRounds: appData.userRounds)
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
