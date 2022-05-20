//
//  CreateScorecard.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct CreateScorecardButtonView: View {
    var body: some View {
        ZStack {
            Color.gray
            Button(action:{print("Hello")}) {
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
