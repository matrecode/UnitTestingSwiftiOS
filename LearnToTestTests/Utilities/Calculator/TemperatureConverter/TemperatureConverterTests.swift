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
    
    func test_celsiusToFahrenheit_positive() {
        XCTAssertEqual(TemperatureConverter.celciusToFahrenheit(100), 212)
    }
    
    func test_celsiusToFahrenheit_negative() {
        XCTAssertEqual(TemperatureConverter.celciusToFahrenheit(-40), -40)
    }
    
    func test_celsiusToFahrenheit_withDecimal() {
        XCTAssertEqual(TemperatureConverter.celciusToFahrenheit(37.5), 99.5)
    }
    
    func test_celsiusToFahrenheit_largeValue() {
        XCTAssertEqual(TemperatureConverter.celciusToFahrenheit(1000), 1832)
    }
}
