//
//  TestCustomToggleStyleUITests.swift
//  TestCustomToggleStyleUITests
//
//  Created by Chuck Hartman on 5/2/20.
//  Copyright © 2020 ForeTheGreen. All rights reserved.
//

import XCTest

extension XCUIElement {
    
    var isOn: Bool? {
        return (self.value as? String).map { $0 == "1" }
    }
}

class TestCustomToggleStyleUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()

        let tablesQuery = XCUIApplication().tables
        
        let helloWorld1Switch = tablesQuery/*@START_MENU_TOKEN@*/.switches["Hello, World 1"]/*[[".cells.switches[\"Hello, World 1\"]",".switches[\"Hello, World 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(helloWorld1Switch.exists)
        XCTAssert(helloWorld1Switch.isOn == false)
        helloWorld1Switch.tap()
        XCTAssert(helloWorld1Switch.isOn == true)

        
        let helloWorld3Switch = tablesQuery/*@START_MENU_TOKEN@*/.switches["Hello, World 3"]/*[[".cells.switches[\"Hello, World 3\"]",".switches[\"Hello, World 3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(helloWorld3Switch.isOn == false)
        helloWorld3Switch.tap()
        XCTAssert(helloWorld3Switch.isOn == true)

        let helloWorld5Switch = tablesQuery/*@START_MENU_TOKEN@*/.switches["Hello, World 5"]/*[[".cells.switches[\"Hello, World 5\"]",".switches[\"Hello, World 5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(helloWorld5Switch.isOn == false)
        helloWorld5Switch.tap()
        XCTAssert(helloWorld5Switch.isOn == true)

        helloWorld1Switch.tap()
        XCTAssert(helloWorld1Switch.isOn == false)
        
        helloWorld3Switch.tap()
        XCTAssert(helloWorld3Switch.isOn == false)
        
        helloWorld5Switch.tap()
        XCTAssert(helloWorld5Switch.isOn == false)
    }
}
