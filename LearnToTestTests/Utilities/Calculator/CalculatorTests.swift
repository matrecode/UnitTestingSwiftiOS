import XCTest
@testable import LearnToTest

final class CalculatorTests: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUpWithError() throws {
//        initialize calcultor before each test
        calculator = Calculator()
    }
    
    override func tearDownWithError() throws {
//        deallocate the calculator instance after each test
        calculator = nil
    }
    
    func testAddition() throws {
        let a = 10
        let b = 20
        
        let result = calculator.addNumbers(a, b)
        
        XCTAssertEqual(result, 30, "Addition should return the correct sum")
    }
    
    func testAdditionWithNegative() throws {
        let a = -10
        let b = -20
        
        let result = calculator.addNumbers(a, b)
        
        XCTAssertEqual(result, -30, "Addition should return the correct sum")
    }
    
    func testDivisionByZeroThrowsError() throws {
        
        XCTAssertEqual(try calculator.divideNumber(10, 2), 5)
        
        XCTAssertThrowsError(try calculator.divideNumber(10, 0)) { error in
            XCTAssertEqual(error as? MathError, MathError.divisionByZero)
        }
    }
    
    func testSubstracttion() throws {
        let a = -10
        let b = -20
        
        let result = calculator.substractNumbers(a, b)
        
        XCTAssertEqual(result, 10, "Substarction should return the correct value")
    }
    
    func testMultiplication() throws {
        let a = -10
        let b = 0
        
        let result = calculator.multiplyNumbers(a, b)
        
        XCTAssertEqual(result, 0, "Multiplication should return the correct value")
    }
    
    func testCategorizeNumber() throws {
        XCTAssertEqual(calculator.categorizeNumber(-5), "Negative")
        XCTAssertEqual(calculator.categorizeNumber(0), "Zero")
        XCTAssertEqual(calculator.categorizeNumber(10), "Positive")
    }
}
