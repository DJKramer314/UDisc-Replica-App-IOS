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
        return counter
    }
    
    func computeLastPlayedRound(recentRounds: [Card]) -> String {
        
        if recentRounds.count == 0 {
            return "Never"
        }
        
        //This is a dummy round that is several years old, so any recent activity will be caught before this
        var mostRecentRound: Card = Card(id: 0, title: "Placeholder Card", layout: "Placeholder Layout", date: Date(timeIntervalSinceNow: -999999999), user: "Placeholder User", score: "No Score")
        
        //Cycles through the rounds and finds the most recent one
        for scorecard in recentRounds {
            if scorecard.date.timeIntervalSinceNow > mostRecentRound.date.timeIntervalSinceNow {
                if scorecard.date.timeIntervalSinceNow > -86400 { //One day
                    return "Today"
                } else if scorecard.date.timeIntervalSinceNow > -172800 { //Two days
                    return "Yesterday"
                }
                mostRecentRound = scorecard
            }
        }
        
        //Calculates how many days ago the most recent round was
        return "\(Int(floor((mostRecentRound.date.timeIntervalSinceNow / -86400)))) Days ago"
    }
    
    
    //Start of the view
    var body: some View {
        let total_rounds = appData.userRounds.count
        let recent_rounds = computeRecentRounds(recentRounds: appData.userRounds)
        let last_played = computeLastPlayedRound(recentRounds: appData.userRounds)
        
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
