import Foundation

class DefaultAuthServiceImpl: AuthServiceProtocol {
    private var currentUser: User?
    func isUserLoggedIn() -> Bool {
        return currentUser != nil
    }
    
    func login(username: String, password: String, completion: @escaping (Result<User, Error>) -> Void){
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            if username == "Admin" && password == "password" {
                let user = User(id: "12345", username: username)
                self.currentUser = user
                completion(.success(user))
            } else {
                completion(.failure(NSError(domain: "", code: 401, userInfo: [NSLocalizedDescriptionKey: "Invalid credentials"])))
            }
        }
    }
}
