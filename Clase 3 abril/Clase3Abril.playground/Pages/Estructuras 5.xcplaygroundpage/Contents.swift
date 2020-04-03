//: [Previous](@previous)

import Foundation
//Type properties
struct Temperature
{
    static var boilingPoint: Int = 100
    static func min (_ x : Double, _ y : Double) -> Double
    {
        if (x<y)
        {
            return x
        }
        else
        {
            return y
        }
    }
}

var temperature1: Temperature = Temperature()
Temperature.boilingPoint
var temperature2: Temperature = Temperature()
Temperature.boilingPoint

let smallerNumber = Double.minimum(100.0, -1000.0)
let temperatureSmallerNumber = Temperature.min(100.0, -1000.0)
//: [Next](@next)
