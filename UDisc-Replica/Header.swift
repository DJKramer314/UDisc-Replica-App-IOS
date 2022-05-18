//
//  Header.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/17/22.
//

import SwiftUI

struct Header: View {
    var body: some View {
        ZStack {
            Color(.darkGray)
            Image("udisclogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(EdgeInsets(top: 50, leading: 0, bottom: 10, trailing: 0))
        }
        .frame(height:90)
    }
}
