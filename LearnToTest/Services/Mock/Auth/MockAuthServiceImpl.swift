import Foundation

class MockAuthServiceImpl: AuthServiceProtocol {
    
    var loggedIn: Bool
    
    init(loggedIn: Bool){
        self.loggedIn = loggedIn
    }
    
    func isUserLoggedIn() -> Bool {
        return loggedIn
    }
}
