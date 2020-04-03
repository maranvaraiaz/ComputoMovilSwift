//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

struct Employee: Equatable, Comparable
{
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    static func == (lhs: Employee, rhs: Employee) -> Bool
    {
        return (lhs.firstName == rhs.firstName &&
                lhs.lastName == rhs.lastName)
    }
    static func < (lhs: Employee, rhs: Employee) -> Bool
    {
        return (lhs.lastName < rhs.lastName)
    }
    /* > >= <= ya existen por los dos de arriba*/
}

struct Company
{
    var name: String
    var employees: [Employee]
}
let currentEmployee = Employee (firstName: "Nezuko", lastName: "Kamado", jobTitle: "CEO", phoneNumber: "55-40-13-84-55")
let storedEmployee = Employee (firstName: "Tanjiro", lastName: "Kamado", jobTitle: "Manager", phoneNumber: "55-45-13-84-55")

//Using Equatable
if currentEmployee == storedEmployee
{
    print("Is the same employee")
}
else
{
    print("Isn't the same employee")
}
//Using Comparable
let employee1 = Employee (firstName: "Tanjiro", lastName: "Kamado", jobTitle: "CEO", phoneNumber: "55-45-13-84-55")
let employee2 = Employee (firstName: "Nezuko", lastName: "Kamado", jobTitle: "Manager", phoneNumber: "55-45-13-84-55")
let employee3 = Employee (firstName: "Ichigo", lastName: "Kurosaki", jobTitle: "Manager", phoneNumber: "55-45-13-84-55")
let employee4 = Employee (firstName: "Abarai", lastName: "Renji", jobTitle: "Counter Manager", phoneNumber: "55-45-13-84-55")

let company = Company(name: "Plastic C.O", employees: [employee1,employee2,employee3,employee4])

print(company.employees)
let storedEmployee2 = company.employees.sorted(by: <)
print(storedEmployee2)
//: [Next](@next)
