//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//DispatchQueue.main.async {
//    DispatchQueue.global(qos: .userInitiated).async {
//        for i in 1...1000 {
//            print("A \(i)")
//        }
//
//    }
//}
//
//for i in 1...1000 {
//    print("A \(i)")
//}

let serialQueue = DispatchQueue(label: "my queue")
serialQueue.async {
    for i in 1...100 {
        print("A1 \(i)")
    }
}

serialQueue.async {
    for i in 1...100 {
        print("A2 \(i)")
    }
}
