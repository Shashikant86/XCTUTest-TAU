//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Jared Meier on 7/15/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import XCTest

final class TAUUITests: TAUUITestBase {

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testAllElementOnMainScreen() {

        app.staticTexts["welcomeMessage"].tap()
        app.staticTexts["enterCity"].tap()
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)

    }

    func testThankYouMessage() {
        
        app.textFields["city"].tap()
        app.typeText("Houston")
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
