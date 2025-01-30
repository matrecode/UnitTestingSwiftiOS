import Foundation

class Calculator {
    
    func addNumbers(_ x: Int, _ y: Int) -> Int {
        return x + y
    }
    
    func substractNumbers(_ x: Int, _ y: Int) -> Int {
        return x - y
    }
    
    func divideNumber(_ a: Int, _ b: Int) throws -> Int {
        guard b != 0 else { throw MathError.divisionByZero }
        return a / b
    }
    
    func multiplyNumbers(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func categorizeNumber(_ num: Int) -> String {
        if num > 0 {
            return "Positive"
        } else if num < 0 {
            return "Negative"
        } else {
            return "Zero"
        }
    }
}

enum MathError: Error {
    case divisionByZero
}
