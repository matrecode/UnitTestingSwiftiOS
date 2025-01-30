import Foundation


class Welcome {
    
    func getUserGreeting(service: AuthServiceProtocol) -> String {
        return service.isUserLoggedIn() ? "Welcome Back" : "Please Log In"
    }
    
}
