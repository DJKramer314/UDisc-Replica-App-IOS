//
//  ScoresScrollView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/18/22.
//

import SwiftUI

func fetchCardData(user: String) -> [Card]{
    
    var cardData:[Card] = []
    
    //Dummy data for now below
    if user == "DJKramer314" {
        cardData = [
            Card(
                id: 1,
                title: "Cottonmill State Park",
                layout: "Full 19",
                date: "May 14, 6:07 PM",
                user: user,
                score: "+9 (66)"
            ),
            Card(
                id: 2,
                title: "Holdrege South Park",
                layout: "Main 9",
                date: "May 5, 1:02 PM",
                user: user,
                score: "-2 (25)"
            )
        ]
    }
    return cardData
}

struct ScoresScrollView: View {
    var cardData: [Card]
    var body: some View {
        ScrollView {
            
            //Iterate through all of the cards in cardData and display them
            
            ForEach (cardData) { card in
                card
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
            }.padding().background(Button(action:{print("card clicked")}) {Color.gray})
            Spacer()
        }
    }
}

