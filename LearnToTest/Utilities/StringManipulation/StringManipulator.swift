import Foundation

final class StringManipulator {
    
    func reverseString(_ inputs: String) -> String {
        return String(inputs.reversed())
    }
    
    func isPalindrome(_ input: String) -> Bool {
        let reversedStr = reverseString(input)
        return input == reversedStr
    }
}
