

import UIKit
//DispatchQueue.main.async {
//
//    DispatchQueue.global(qos: .userInitiated).async {
//    for i in 1...100 {
//        print("B1 Queue \(i)")
//    }
//}
//    DispatchQueue.global(qos: .userInitiated).async {
//        for i in 1...100 {
//            print("B2 Queue \(i)")
//        }
//}
//}

let serialQueue = DispatchQueue(label: "mu queue")
serialQueue.async {
    for i in 1...100 {
        print("A1 Queue \(i)")
    }

}

serialQueue.async {
    for i in 1...100 {
        print("A2 Queue \(i)")
    }
}







