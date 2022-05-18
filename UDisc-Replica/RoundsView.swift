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
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
    }
}
