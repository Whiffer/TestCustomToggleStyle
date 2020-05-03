//
//  ListSelectionManager.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 8/5/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import Foundation
import Combine

class ListSelectionManager<T: Hashable>: ObservableObject {
    
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    subscript(member: T) -> Bool {
        
        get {
            return self.selection.contains(member)
        }
        set {
            self.objectWillChange.send()
            if newValue {
                self.selection.insert(member)
            } else {
                self.selection.remove(member)
            }
        }
    }
    
    @Published var selection: Set<T> = Set<T>()
}

