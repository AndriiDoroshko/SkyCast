import UIKit

var greeting = "Hello, playground"

class MyNotification {
    let name: String
    let userInfo: [String: Any]?
    
    init(name: String, userInfo: [String: Any]?) {
        self.name = name
        self.userInfo = userInfo
    }
}

class MyNotificationCenter {
    
    var observers: [String: (AnyObject, (MyNotification) -> ())] = [:]
    
    func addObserver(observer: AnyObject, name: String, handler: @escaping (MyNotification) -> ()) {
        guard observers[name] != nil else { return }
        observers[name] = (observer, handler)
    }
    
    func removeObserver(observer: String, name: String) {
        guard let observer = observers[name] else { return }
        observers.removeValue(forKey: name)
    }
    
    func postNotification(name: String) {
        guard let observer = observers[name] else { return }
        let notification = MyNotification(name: name, userInfo: nil)
        
        observer.1(notification)
    }
}
