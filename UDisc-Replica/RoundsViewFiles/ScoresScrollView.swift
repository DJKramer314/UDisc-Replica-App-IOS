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
                scorecard //scorecard is a VIEW of type Card
            }
        }
    }
}

struct Card: View, Identifiable {
    
    var id: Int
    var title: String
    var layout: String
    var date: String
    var user: String
    var score: String
    
    var body: some View {
        HStack {
            VStack {
                HStack(spacing: 20) {
                    Text(title)
                    Text(layout)
                }
                Text(date)
                HStack {
                    Image(systemName: "figure.walk")
                    VStack{
                        Text(user)
                            .fontWeight(.bold)
                        Text(score)
                    }
                }
            }
            Spacer()
        }
    }
}

