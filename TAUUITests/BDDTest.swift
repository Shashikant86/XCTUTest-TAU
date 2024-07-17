//
//  BDDTest.swift
//  TAUUITests
//
//  Created by Jared Meier on 7/16/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: TAUUITestBase {

    func testThankYouMessageInBDDStyle() {

        givenAppIsReady()
        whenIEnterCity(city: "Houston")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}

extension TAUUITestBase {

    func givenAppIsReady() {

        XCTContext.runActivity(named: "Given app is ready ") { _ in
            XCTAssertTrue(app.buttons["enrollButton"].exists)
        }
    }

    func whenIEnterCity(city: String) {

        XCTContext.runActivity(named: "When I enter a city \(city) ") { _ in
            app.textFields["city"].tap()
            app.textFields["city"].typeText(city)
        }
    }

    func whenIEnrolled() {

        XCTContext.runActivity(named: "When I Enrolled " ) { _ in
            app.buttons["enrollButton"].tap()
        }
    }

    func thenIShouldSeeThankYouMessage() {

        XCTContext.runActivity(named: "Then I Should See Thanks message ") {_ in
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
    }
}
