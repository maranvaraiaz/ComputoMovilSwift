//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
//Protocolos
class Shoe: CustomStringConvertible
{
    var description: String
    {
        return "Shoe (color: \(color), size: \(size), hasLaces: \(hasLaces)"
    }
    let color: String
    let size: Int
    let hasLaces: Bool
    init(color: String, size: Int, hasLaces: Bool)
    {
        self.color=color
        self.size=size
        self.hasLaces=hasLaces
    }
}

var myShoe: Shoe = Shoe(color: "Black", size: 19, hasLaces: true)
print(myShoe)
//: [Next](@next)
