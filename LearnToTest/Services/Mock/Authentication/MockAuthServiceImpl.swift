import Foundation

class MockAuthServiceImpl: AuthServiceProtocol {
    var shouldReturnError = false
    var capturedUsername: String?
    var capturedPassword: String?
    private var isLoggedIn: Bool = false
    
    func isUserLoggedIn() -> Bool {
        return isLoggedIn
    }
    
    func login(username: String, password: String, completion: @escaping (Result<User, any Error>) -> Void) {
        capturedUsername = username
        capturedPassword = password
        
        if shouldReturnError {
            isLoggedIn = false
            completion(.failure(NSError(domain: "", code: 401, userInfo: [NSLocalizedDescriptionKey: "Mocked invalid credentials"])))
        } else {
            isLoggedIn = true
            let user = User(id: "mock123", username: username)
            completion(.success(user))
        }
    }
    
    
}
