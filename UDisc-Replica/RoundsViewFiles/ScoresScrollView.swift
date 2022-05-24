//
//  ScoresScrollView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/18/22.
//

import SwiftUI

struct ScoresScrollView: View {
    @EnvironmentObject var appData: AppData
    var body: some View {
        ScrollView {
            
            //Iterate through all of the cards in cardData and display them
            
            ForEach (appData.userRounds) { scorecard in
                CardView(inputCard: scorecard) //scorecard is a of type Card
            }
        }
    }
}
