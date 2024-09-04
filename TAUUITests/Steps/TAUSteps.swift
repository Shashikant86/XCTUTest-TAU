//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by Jared Meier on 8/7/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension TAUUITestBase {

    func givenAppIsReady() {

        XCTContext.runActivity(named: "Given app is ready ") { _ in
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }

    func whenIEnterCity(city: String) {

        XCTContext.runActivity(named: "When I enter a city \(city) ") { _ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
    }

    func whenIEnrolled() {

        XCTContext.runActivity(named: "When I Enrolled " ) { _ in
            TAUScreen.enrollButton.element.tap()
        }
    }

    func thenIShouldSeeThankYouMessage() {

        XCTContext.runActivity(named: "Then I Should See Thanks message ") {_ in
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
    }
}
