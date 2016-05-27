//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var strNew: String?

func printString(str: String){
    print(str)
}

print(strNew)


let m = 4
let n = 5
let s = "You have \(m + n) widgets."


enum Filter{
    case CENTER
    case LEFT
    case RIGHT
    case TOP
}

var filter = Filter.LEFT


enum Error {
    case Number(Int)
    case Message(String)
    case Fatal
}

let err : Error = .Number(4)


/*class Dog{
    var name: String
    
    init(){
        self.name = "Fido"
    }
    
}*/

protocol Flier {
}

extension Flier {
    func fly() {
        print("flap flap flap")
    }
}

struct Bird : Flier {
}

let b = Bird()
b.fly()

//let arr = [1,2,3]
//let arr2 = arr.suffix(10)

var arr = [1,2,3]

arr += [4]


class Test{
    var myMap: Dictionary<String, String> = [String:String]()
}

let set : Set = [1,2,3,4,5]
let set2 = Set(set.map{$0+1})


var i:Int = 1

switch i{
    case 1:
        print("In case 1")
        fallthrough
    case 2:
        print("In case 2")
        fallthrough
    case 5:
        print("In case 5")
        fallthrough
    default:
        print("In case default")
}

struct Dog : CustomStringConvertible {
    var name = "Fido"
    var license = 1
    var description : String {
        var desc = "Dog ("
        let mirror = Mirror(reflecting:self)
        for (k,v) in mirror.children {
            desc.appendContentsOf("\(k!): \(v), ")
        }
        let c = desc.characters.count
        return String(desc.characters.prefix(c-2)) + ")"
    }
}

Dog (name: "Fido", license: 1)