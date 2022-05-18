//
//  CardView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct Card: View {
    var body: some View {
        let title: String = "Holdrege South Park"
        let layout: String = "Main 9"
        let date: String = "May 17, 1:05 PM"
        let user: String = "DJKramer"
        let score: String = "-1 (27)"
        
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
        
        
    }
}
