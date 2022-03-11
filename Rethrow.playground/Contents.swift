import UIKit

// Rethrows: forwards errors

func doSomething (callback: () throws -> Void) rethrows {
    try callback()
}

do{
    try doSomething {
//    print("something")
    
    let data = Data()
    try JSONDecoder().decode(String.self, from: data)
    }
} catch {
    print(error)
}


// mainly used for writing SDKs and Libraries
