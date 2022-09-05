
import XCTest

class CalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.l let
        
        let app = XCUIApplication()
        let button = app.buttons["1"]
        button.tap()
        app.buttons["+"].tap()
        button.tap()
        app.buttons["Enter"].tap()
    }
    
    func testOnePlusTwo(){
          // This is an example of a functional test case.
          // Use XCTAssert and related functions to verify your tests produce the correct results.l let
          
          let app = XCUIApplication()
          app.buttons["1"].tap()
          app.buttons["+"].tap()
          app.buttons["2"].tap()
          app.buttons["Enter"].tap()
          XCTAssert(app.staticTexts["3"].exists,"Answer is not = 3")
    
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
        }
    }
    
}
