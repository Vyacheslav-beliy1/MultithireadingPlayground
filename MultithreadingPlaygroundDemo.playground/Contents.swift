//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

//DispatchQueue.main.async {
//    DispatchQueue.global(qos: .userInitiated).async {
//        for i in 1...100 {
//            print("B\(i)")
//        }
//    }
//
//    for i in 1...100 {
//        print("A\(i)")
//    }
//}


//
//DispatchQueue.global(qos: .userInitiated).async {
//    for i in 1...100 {
//        print("A1 \(i)")
//    }
//}
//
//DispatchQueue.global(qos: .userInitiated).async {
//    for i in 1...100 {
//        print("A2 \(i)")
//    }
//}


let serialQueue = DispatchQueue(label: "my queue")
//ТАК НЕ ДЕЛАТЬ
serialQueue.async {
    for i in 1...100 {
        print("A1 \(i)")
    }
    
    serialQueue.sync {
        for i in 1...100 {
            print("A2 \(i)")
        }
    }
    print("123")
}
//

serialQueue.async {
    for i in 1...100 {
        print("A2 \(i)")
    }
}
