//
//  ContentView.swift
//  TestCustomToggleStyle
//
//  Created by Chuck Hartman on 5/2/20.
//  Copyright © 2020 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var selection = ListSelectionManager<Int>()
    var body: some View {
        List {
            ForEach(1..<6) { i in
                Toggle(isOn: self.$selection[i]) {
                    Text("Hello, World \(i)")
                }
                .toggleStyle(CheckmarkToggleStyle())
                // When this custom toggle style is present 'Product Test' will fail
                // When the custom toggle style is commented 'Product Test' will succeed
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
