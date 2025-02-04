// TDD follows the RED-GREEN-REFACTOR cycle/pattern/rule
// RED - Write failing tests
// GREEN - Implement just enough code to pass the test
// REFACTOR - Clean up and optimize the code without changing the behaviour

import XCTest
@testable import LearnToTest

class TemperatureConverterTests: XCTestCase {
    
    func testCelciusToFahrenheit() throws {
        let result = TemperatureConverter.celciusToFahrenheit(0)
        XCTAssertEqual(result, 32)
    }
}
