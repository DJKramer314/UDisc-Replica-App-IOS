//
//  MoreView.swift
//  UDisc-Replica
//
//  Created by Dylan on 5/18/22.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        VStack {
            Header()
            
            NavigationView {
                Form {
                    Section(header: Text("Play")) {
                        NavigationLink(destination: Text("Placeholder")) {
                            Text("Scorecards")
                        }
                        NavigationLink(destination: Text("Placeholder")) {
                            Text("Players")
                        }
                        NavigationLink(destination: Text("Placeholder")) {
                            Text("Discs")
                        }
                        NavigationLink(destination: Text("Placeholder")) {
                            Text("Throws")
                        }
                    }
                    Section(header: Text("Practice")) {
                        NavigationLink(destination: Text("Placeholder")) {
                            Text("Measure Throw")
                        }
                        NavigationLink(destination: Text("Placeholder")) {
                            Text("Putting Practice")
                        }
                        NavigationLink(destination: Text("Placeholder")) {
                            Text("Accuracy Practicea")
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
    }
}
