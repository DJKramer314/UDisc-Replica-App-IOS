//
//  CardView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/24/22.
//

import SwiftUI

struct CardView: View{
    
    var inputCard: Card
    
    func formatDate(_ inputDate: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss MMM d, YYYY"
        return dateFormatter.string(from: inputDate)
    }
    
    var body: some View {
            HStack {
                VStack {
                    HStack() {
                        Text(inputCard.title)
                        Text(inputCard.layout)
                    }
                    Text(formatDate(inputCard.date))
                    HStack {
                        Image(systemName: "figure.walk")
                        VStack{
                            Text(inputCard.user)
                                .fontWeight(.bold)
                            Text(inputCard.score)
                        }
                    }
                }
                Spacer()
            }
    }
}



