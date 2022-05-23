//
//  AppData.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/19/22.
//

import SwiftUI

class AppData: ObservableObject {
    @Published var user: String = ""
    @Published var userRounds: [Card] = []
    @Published var cardsAreVisible: Bool = false
}
