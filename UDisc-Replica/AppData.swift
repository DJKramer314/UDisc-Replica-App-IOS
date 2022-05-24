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
    
    let encoder = JSONEncoder()
    let decoder = JSONDecoder()
    
    @Published var defaults = UserDefaults.standard
    
    init() {
        let userRoundsEncodedData = UserDefaults.standard.object(forKey: "userRounds") as? Data ?? Data()
        do {
            userRounds = try decoder.decode([Card].self, from: userRoundsEncodedData)
            cardsAreVisible = true
        } catch {
            userRounds = [Card]()
            cardsAreVisible = false
        }
    }
}
