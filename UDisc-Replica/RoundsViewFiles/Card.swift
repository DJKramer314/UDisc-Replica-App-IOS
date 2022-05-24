//
//  Card.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/24/22.
//

import SwiftUI

struct Card: Identifiable, Codable {
    
    var id: Int
    var title: String
    var layout: String
    var date: Date
    var user: String
    var score: String
    
}


