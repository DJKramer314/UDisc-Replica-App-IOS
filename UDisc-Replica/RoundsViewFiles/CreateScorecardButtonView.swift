//
//  CreateScorecard.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI




struct CreateScorecardButtonView: View {
    
    @EnvironmentObject var appData: AppData
    
    private func createScoreCard() {
        appData.userRounds.append(Card(id: appData.userRounds.count, title: "Home Course", layout: "Main 9", date: "Today", user: appData.user, score: "0 (27)"))
    }
        
    var body: some View {
        ZStack {
            Color.gray
            Button(action:{createScoreCard()}) {
                ZStack {
                    Color(.orange)
                    Text("CREATE SCORECARD")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
            }
            .padding(5)
            
        }
        .frame(height:50)
        
    }
}
