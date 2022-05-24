//
//  AppData.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/19/22.
//

import SwiftUI

class AppData: ObservableObject {
    @Published var user: String = ""
    @Published var userRounds: [Card]
    @Published var cardsAreVisible: Bool
    
    //Necessary for the Codable protocol
    let encoder = JSONEncoder()
    let decoder = JSONDecoder()
    
    @Published var defaults = UserDefaults.standard
    
    init() {
        let userRoundsEncodedData = UserDefaults.standard.data(forKey: "userRounds") ?? Data()
        do {
            userRounds = try decoder.decode([Card].self, from: userRoundsEncodedData)
            
            //Will only get here if there are rounds loading
            cardsAreVisible = true
        } catch {
            userRounds = [Card]() //Creates an empty array if the decoder finds nothing to decode
            
            //Will only get here if there are no rounds loading
            cardsAreVisible = false
        }
    }
}
