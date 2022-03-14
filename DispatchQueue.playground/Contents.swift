import UIKit

DispatchQueue.main.async {
    foo()
}

DispatchQueue.global(qos: .background).async {
    // fetch data from API
    
    DispatchQueue.main.async {
        // Update UI
    }
}


func foo() {
    
}
