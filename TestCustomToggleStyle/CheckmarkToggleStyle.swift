//
//  CheckmarkToggleStyle.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 8/5/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI

struct CheckmarkToggleStyle: ToggleStyle {
    
    public func makeBody(configuration: CheckmarkToggleStyle.Configuration) -> some View {
        HStack {
            (configuration.isOn ? Image(systemName: "checkmark.circle.fill") : Image(systemName: "circle"))
                .resizable()
                .frame(width: 22, height: 22)
                .foregroundColor(configuration.isOn ? .blue : .gray)
//                .onTapGesture(perform: { configuration.isOn.toggle() } )
            configuration.label
        }
            // Workaround: Move the .onTapGesture() from the Image to the HStack
        .onTapGesture(perform: { configuration.isOn.toggle() } )
    }
}
