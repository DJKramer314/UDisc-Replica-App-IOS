//
//  CreateScorecard.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct CreateScorecardButtonView: View {
    
    @EnvironmentObject var appData: AppData
    
    private func createScoreCard() {
        
        //Creates a dummy card with today's date
        appData.userRounds.append(Card(id: appData.userRounds.count, title: "Home Course", layout: "Main 9", date: Date(), user: appData.user, score: "0 (27)"))
        
        //Allows the cards to be seen once the button is pressed
        appData.cardsAreVisible = true
        
        do {
            
            //Tries to turn the Card array into the type Data for the Defaults file
            let userRoundsEncodedData = try appData.encoder.encode(appData.userRounds)
            
            //Uploads the new card data into the User Defaults file
            appData.defaults.set(userRoundsEncodedData, forKey: "userRounds")
            
        } catch {
            
            //Catch all error message
            print("error uploading scorecard data after creation")
            
        }
        
        
    }
        
    var body: some View {
        ZStack {
            Color.gray
            Button(action:{createScoreCard()}) {
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
