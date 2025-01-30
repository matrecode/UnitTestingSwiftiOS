import XCTest
@testable import LearnToTest

final class LearnToTestTests: XCTestCase {
    
    func testAddNumbers() throws {
        let x = 3
        let y = 5
        
        let result = addNumbers(x, y)
        
        XCTAssertEqual(result, 8, "The addNumbers function should return the sum of two integers.")
    }
}
