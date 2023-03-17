import UIKit

extension Int {
    func times(closure: () -> Void) {
        guard self > 0 else {return}
        for _ in Range(1...self){
            closure()
        }
    }
}

5.times{print("Hello!")}

extension Array where Element: Comparable {
    mutating func remove(item: Element) {
        if let index = firstIndex(of: item) {
            remove(at: index)
        }
    }
}

var myArray = ["fire", "fire", "from", "the", "tongues", "of", "liars"]
myArray.remove(item: "fire")
