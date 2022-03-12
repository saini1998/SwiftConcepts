import UIKit

class User {
    let id: String
    let name: String
    
    init (id: String, name: String){
        self.id = id
        self.name = name
    }
}
//
//class UserStorage {
//    private var store = [String: User] ()
//
//    private let queue = DispatchQueue(label: "user_save_queue")
//
//    func get(_ id: String) -> User? {
//        queue.sync {
//            return store[id]
//        }
//    }
//
//    func save(_ user: User) {
//        queue.sync {                        // async can cause race conditions
//            store[user.id] = user
//        }
//    }
//}


actor UserStorage {
    
    private var store = [String: User] ()

    
    func get(_ id: String) -> User? {
            return store[id]
    }
    
    func save(_ user: User) {
            store[user.id] = user

    }
    
    init () {}
}


let storage = UserStorage()


Task {
    let user = User(id: "x1", name: "xyz")
    

    await storage.save(user)
    let get = await storage.get("x1")

    print(String(describing: get))
}

