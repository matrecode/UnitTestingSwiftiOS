import Foundation

protocol AuthServiceProtocol {
    func isUserLoggedIn() -> Bool
    func login(username: String, password: String, completion: @escaping (Result<User, Error>) -> Void)
}
