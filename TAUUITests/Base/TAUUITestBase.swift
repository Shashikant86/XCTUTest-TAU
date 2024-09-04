import Foundation
import XCTest

class TAUUITestBase: XCTestCase {

    var app = XCUIApplication()

    override func setUpWithError() throws {

        super.setUp()
        continueAfterFailure = false
        app.launch()

    }

    override func tearDownWithError() throws {
        
        app.terminate()
        super.tearDown()


    }
}
