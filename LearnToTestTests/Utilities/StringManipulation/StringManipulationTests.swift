import XCTest
@testable import LearnToTest

final class StringManipulationTests: XCTestCase {
    
    var stringManipulator: StringManipulator!
    
    override func setUpWithError() throws {
        stringManipulator = StringManipulator()
    }
    
    override func tearDownWithError() throws {
        stringManipulator = nil
    }
    
    func testreversdString() throws {
        // Arrange
        let input = "Akshay"
        
        // Act
        let reverseStr = stringManipulator.reverseString(input)
        let emptyReverseStr = stringManipulator.reverseString("")
        
        // Assert
        XCTAssertEqual(reverseStr, "yahskA")
        XCTAssertEqual(emptyReverseStr, "")
    }
    
    func testIsPallindrome() throws {
        XCTAssertTrue(stringManipulator.isPalindrome("madam"))
        XCTAssertFalse(stringManipulator.isPalindrome("akshay"))
        XCTAssertTrue(stringManipulator.isPalindrome(""))
        XCTAssertTrue(stringManipulator.isPalindrome("a"))
    }
}
