//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//JSON
struct Employee: Codable
{
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
}

let employee1 = Employee (firstName: "Tanjiro", lastName: "Kamado", jobTitle: "CEO", phoneNumber: "55-45-13-84-55")

let jsonEncoder = JSONEncoder()
if let jsonData = try?(jsonEncoder.encode(employee1))
{
    print(jsonData)
    let jsonString = String(data: jsonData, encoding: .utf8)
    print(jsonString!)
}
else
{
    print("Error al codificar")
}

//: [Next](@next)
