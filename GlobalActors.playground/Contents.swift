import UIKit

// Option + Command + 1

DispatchQueue.main.async {
    // Update Code
}

@MainActor
final class thing{
    func doSomething() {
        
    }
}

@globalActor
actor academy{
    static var shared = academy()
    
}

class ImagePresenter {
    
    @MainActor var images: [UIImage] = []
    
    func fetch(){
        DispatchQueue.main.async {
            // Update Code
        }
        
        
    }
    
    @MainActor
    func updateUI() {
        images = [UIImage(named: "123")!]
    }
}

extension MainActor {
    public static func run <T> (
        resultType: T.Type = T.self,
        body: @MainActor @Sendable () throws -> T
    ) async rethrows -> T {
        do {
            return try await body()
        } catch {
            throw error
        }
    }
}


async {
    await MainActor.run{
        
    }
}
