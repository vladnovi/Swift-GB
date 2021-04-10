import Cocoa
import Foundation

public struct Queue<T>: CustomStringConvertible {
    
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    fileprivate var count: Int {
        return array.count
    }
    public func getCount() -> String {
        return "Количество элементов в очереди: \(count)"
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            let removedElement = array.first
            print("Удален элемент: \(String(describing: removedElement!))")
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
    public var description: String {
        return "Содержимое очереди: \(self.array)"
    }
    public func filter(array: [T], predicateSomeClosure: (T) -> Bool) -> [T] {
        var tmpArray = [T]()
        for element in array {
            if predicateSomeClosure(element) {
                tmpArray.append(element)
            }
        }
        return tmpArray
    }
}
    
    print("Реализация очереди с использованием Generics")
    var q01 = Queue<String>()
    print(q01)
    q01.enqueue("Swift")
    q01.enqueue("C++")
    q01.enqueue("Java")
    print(q01.getCount(), "\n")
    print("\(q01)")

    let sortedQueue = q01.array.sorted(by: >)
    print("Отсортировання очередь по убыванию: \(sortedQueue)\n")

    let filteredQueue = q01.filter(array: q01.array) { (s1: String) -> Bool in
        return s1 == "Swift"
    }
    print("Массив из очереди по фильтру: \(filteredQueue)\n")

    while (q01.count > 0) {
        q01.dequeue()
        print(q01)
        print(q01.getCount())
    }
   


