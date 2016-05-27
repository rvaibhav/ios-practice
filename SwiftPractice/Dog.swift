//
//  Dog.swift
//  
//
//  Created by Vaibhav Ranglani on 06/05/16.
//
//

import Foundation

class Dog: CustomStringConvertible{
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
