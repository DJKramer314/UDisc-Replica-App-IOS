//
//  ContentView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct RoundsView: View {
    var body: some View {
        VStack {
            Header()
            
            StatsBar()
            
            CreateScorecardView()
            
            ScoresScrollView(cardData: fetchCardData(user: "DJKramer314"))
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}


