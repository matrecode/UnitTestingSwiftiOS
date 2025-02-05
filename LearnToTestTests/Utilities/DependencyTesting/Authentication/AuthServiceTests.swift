import XCTest
@testable import LearnToTest

class AuthServiceTests: XCTestCase {
    var mockAuthService: MockAuthServiceImpl!
    
    override func setUp() {
        super.setUp()
        mockAuthService = MockAuthServiceImpl()
    }
    
    override func tearDown() {
        mockAuthService = nil
        super.tearDown()
    }
    
    func testUserLoggedInAfterSuccessfulLogin(){
        let expectation = self.expectation(description: "Login Success")
        
        mockAuthService.login(username: "testUser", password: "password"){ result in
            switch result {
            case .success:
                XCTAssertTrue(self.mockAuthService.isUserLoggedIn(), "User should be logged in after successful login")
                expectation.fulfill()
            case .failure:
                XCTFail("Expected successful login")
            }
        }
        
        waitForExpectations(timeout: 2, handler: nil)
    }
    
    func testUserLoggedInAfterFailedLogin(){
        mockAuthService.shouldReturnError = true
        let expectation = self.expectation(description: "Login Failure")
        
        mockAuthService.login(username: "wrongUser", password: "wrongpass"){ result in
            switch result {
            case .success:
                XCTFail("Expected login failure")
            case .failure:
                XCTAssertFalse(self.mockAuthService.isUserLoggedIn())
                expectation.fulfill()
            }
        }
        
        waitForExpectations(timeout: 2, handler: nil)
    }
    
    
}
