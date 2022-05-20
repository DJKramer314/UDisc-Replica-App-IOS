//
//  ContentView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct RoundsView: View {
    
//    @EnvironmentObject var appData: AppData
//    Unused so far
    
    var body: some View {
        VStack {
            Header()
            
            StatsBar()
            
            CreateScorecardButtonView()
            
            ScoresScrollView()
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}


