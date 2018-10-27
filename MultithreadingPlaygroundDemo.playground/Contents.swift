//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var str1 = "sdfsdfsd"


//    DispatchQueue.global(qos: .userInteractive).async {
//        for i in 1...1000 {
//            print("B \(i)")
//        }
//    }
//
//    for i in 1...1000 {
//        print("A \(i)")
//    }

//DispatchQueue.global(qos: .userInteractive).async {
//    for i in 1...1000 {
//        print("A1 \(i)")
//    }
//}
//
//DispatchQueue.global(qos: .userInteractive).async {
//    for i in 1...1000 {
//        print("A2 \(i)")
//    }
//}


let serialQueue = DispatchQueue(label: "my queue")

serialQueue.async {
    for i in 1...100 {
        print("A1 \(i)")
    }
    
    serialQueue.sync {
        for i in 1...100 {
            print("A2 \(i)")
        }
    }
    
    for i in 1...100 {
        print("A3 \(i)")
    }
}


