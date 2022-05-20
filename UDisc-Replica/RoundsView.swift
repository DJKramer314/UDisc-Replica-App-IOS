//
//  ContentView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct RoundsView: View {
    
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        VStack {
            Header()
            
            StatsBar()
            
            CreateScorecardButtonView()
            
            ScoresScrollView(cardData: fetchCardData(user: appData.user))
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}


