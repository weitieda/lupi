import XCTest
@testable import Lupi

final class LupiTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Lupi().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
