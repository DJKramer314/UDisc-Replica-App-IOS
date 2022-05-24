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
        appData.userRounds.append(Card(id: appData.userRounds.count, title: "Home Course", layout: "Main 9", date: Date(), user: appData.user, score: "0 (27)"))
        appData.cardsAreVisible = true
        
        appData.encoder.outputFormatting = .prettyPrinted
        let userRoundsEncodedData = try! appData.encoder.encode(appData.userRounds)
        appData.defaults.set(userRoundsEncodedData, forKey: "userRounds")
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
