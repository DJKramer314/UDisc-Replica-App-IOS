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
            
            
            if appData.cardsAreVisible {
                List {
                    ScoresScrollView()
                }
            } else {
                List {
                    ScoresScrollView()
                }.hidden()
            }
            
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}


