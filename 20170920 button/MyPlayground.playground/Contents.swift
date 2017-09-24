//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//var numA = 5
//var numB = 10
//var numC: Double = 5
//
//numA = numA + 3
//numB = numB + 3
//numC = numC + 3.2
//
//let t = "Tom" + "ato"
//let age = 29
//let ageString = "I'm \(age) years old."
//
//let x = 4
//let y = 20
//
//print ("\(y + x) is greater than \(x)")
//
//if x > 3
//{
//    print(x)
//}

class RocketShip
{
    var speed: Double
    let modelNumber: Int
    let shipName: String
    
    var crew: [String]
    
    init(shipName: String, modelNumber: Int)
    {
        speed = 0.0
        self.modelNumber = modelNumber
        self.shipName = shipName
        crew = ["Jane", "Jenny"]
    }
    
    func addSpeed(addedSpeed: Double) -> Double
    {
        speed = speed + addedSpeed
        return speed
    }
    
    func addBoostSpeed(s: Double, numOfBoost: Int) -> Double
    {
        let bSpeed = s * Double(numOfBoost)
        self.speed = self.speed + bSpeed
        return speed
    }
    
    func getWeapon() -> Double?
    {
        return nil
    }
}

let myRocket = RocketShip(shipName: "Roger", modelNumber: 3000)

var currentSpeed = myRocket.speed
currentSpeed = myRocket.addSpeed(addedSpeed: 1.5)
currentSpeed = myRocket.addSpeed(addedSpeed: 4.5)

print ("asdf is \(currentSpeed)")

currentSpeed = myRocket.addBoostSpeed(s: 3.4, numOfBoost: 2)
print (currentSpeed)

myRocket.crew.append("Jack")
myRocket.crew.removeLast()

for mem in myRocket.crew
{
    print(mem)
}

for i in 0 ..< myRocket.crew.count
{
    print(myRocket.crew[i])
}
/******************************/
let crewAgeDict = ["Jack": 34, "Jane": 30] //[String] <- Array
//let dict: [String: Int]
var matrix : [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: 10)

print("Jack is \(crewAgeDict["Jack"])")

// optional ==> nullable

var name: String?
if name != nil
{
    print(name!)
}
else
{
    print("name is nil")
}

/********************* Optional Binding: to avoid nil crash*/
var name2: String? = "J"
if let n = name2
{
    print(n)
}

/********************* Optional Chaining: to avoid nil crash*/
var myRocket2: RocketShip?
// to avoid this crash: myRocket2!.addBoostSpeed(s: 1.2, numOfBoost: 1)
myRocket2?.addBoostSpeed(s: 1.2, numOfBoost: 1)

// say getWeapon() returns an optional

//myRocket2?.getWeapon()?.fire()


 
