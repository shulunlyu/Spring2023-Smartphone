import UIKit

let name: String = "Ashish"
var age: Int8 = 41

print(Int8.max)
print(Int16.max)

var arr = [1,2,3]

var emptyArray:[Int] = []

let howOldAreYou = age > 40 ? "Experienced" : "You are young"

print(howOldAreYou)

let firstName = "Ashish"
let lastName = "Singh"

let helloString1 = "Hello " + firstName + ", " + lastName + "!"

let helloString = "Hello \(firstName), \(lastName) welcome to the class"

print(helloString)

var friends: [String] = []

friends.append("Tom")
friends.append("Bill")
friends.append("Mark")
friends.append("Peter")

print(friends.count)
print(friends.first)
print(friends.endIndex)
print(friends.remove(at: 1))

for friend in friends{
    print(friend)
}

for (index,friend) in friends.enumerated(){
    print("Friend Name = \(friend) Index = \(index))")
}

var foodItemsEmpty = Set<String>() //Empty

var foodItemsInitialized : Set<String> = ["Pizza","Burger","Salad"]

foodItemsEmpty.insert("Pizza")
foodItemsEmpty.insert("Burger")
foodItemsEmpty.insert("Salad")

print(foodItemsEmpty.contains("Burger"))

for food in foodItemsEmpty.sorted(){
    print(food)
}

// Dictionary

var countryDetails: [String : String] = [:]

var coutryDetailsInferred =
[
    "US" : "United States",
    "IN" : "India",
    "CN" : "China",
    "CA" : "Canada",
    "EN" : "England",
]

print("\(coutryDetailsInferred["IN"])")
//output = Optional("India")

coutryDetailsInferred.removeValue(forKey: "EN")

coutryDetailsInferred["CA"] = nil

//coutryDetailsInferred["IN"] = "Country India"
coutryDetailsInferred.updateValue("Country India", forKey: "IN")
print("\(coutryDetailsInferred["IN"])")
//output = Optional("Country India")

for (countryCode, countryName) in coutryDetailsInferred{
    print("Country Code = \(countryCode) Country Name = \(countryName)")
}

var i = 0
let endIndex = 5

while i < endIndex {
    print("I am here")
    i = i + 1
}

if age < 40{
    print("You are young")
}else{
    print("You are experienced")
}

// Switch

let letter = "A"

switch letter{
case "a", "A":
    print("This is the first letter")
case "z":
    print("This is the last letter")
default:
    print("This is some of the middle letter")
}

// Optional

var myInt: Int?
myInt = 5

if let myInt = myInt {
    let multipliedBy5 = myInt * 5
    print(multipliedBy5)
}

func greet(){
    print("Hello World")
}

greet()

func greetWithName(_ firstName : String, lastName : String){
    print("Hello \(firstName), \(lastName)")
}

greetWithName( "Ashish", lastName: "Singh")

func getFullName(_ firstName: String, _ lastName : String) -> String {
    
    return "\(firstName), \(lastName)"
}

print(getFullName("Ashish", "Singh"))

var a = 5

func incrementByOne(_ a : inout Int){
    a = a + 1
}

incrementByOne(&a)

print("Value of a = \(a)")

struct User{
    let firstName : String
    let lastName : String
    var age : Int
    
    func getFullName() -> String{
        return "\(firstName), \(lastName)"
    }
}

var ashish = User(firstName: "Ashish", lastName: "Singh", age: 21)
print(ashish.getFullName())

enum ColorEnum {
    case red
    case green
    case blue
}

print(ColorEnum.red)

enum IntEnum : Int{
    case one = 1
    case two
    case three
}

print(IntEnum.two.rawValue)
//2

enum CityEnum : String {
    case DEL = "Delhi"
    case SEA = "Seattle"
    case PDX = "Portland"
}

print(CityEnum.PDX)
//PDX
print(CityEnum.PDX.rawValue)
//Portland
