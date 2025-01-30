import XCTest
@testable import LearnToTest

class WelcomeTests: XCTestCase {
    
    var welcome: Welcome!
    
    override func setUpWithError() throws {
//        initialize welcome before each test
        welcome = Welcome()
    }
    
    override func tearDownWithError() throws {
//        deallocate the welcome instance after each test
        welcome = nil
    }
    
    
    func testGetUserGreeting() throws {
        let loggedInService = MockAuthServiceImpl(loggedIn: true)
        XCTAssertEqual(welcome.getUserGreeting(service: loggedInService), "Welcome Back")
        let loggedOutService = MockAuthServiceImpl(loggedIn: false)
        XCTAssertEqual(welcome.getUserGreeting(service: loggedOutService), "Please Log In")
    }
}
