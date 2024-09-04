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
