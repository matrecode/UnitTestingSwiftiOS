import Foundation

// Using struct(stack allocated, each copy is independent, don't support inheritence) instead of class(heap allocated,shared instances ) because the converter doesn't holding any state and it only provides pure function
// struct is value types and class is reference types

struct TemperatureConverter {
    
    static func celciusToFahrenheit(_ input: Double) -> Double {
        return (input * 9/5) + 32
    }
}
