//
//  TestBsDepthTrack.swift
//  Graduation RequirementUITests
//
//  Created by 毛毛 on 2018/11/12.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class TestBsDepthTrack: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.pickerWheels["2020"].press(forDuration: 0.6);/*[[".pickers.pickerWheels[\"2020\"]",".tap()",".press(forDuration: 0.6);",".pickerWheels[\"2020\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
        
        let confirmButton = app.buttons["Confirm"]
        confirmButton.tap()
        
        let selectButton = app.buttons["Select"]
        selectButton.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 132"]/*[[".cells.staticTexts[\"EECS 132\"]",".staticTexts[\"EECS 132\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 233"]/*[[".cells.staticTexts[\"EECS 233\"]",".staticTexts[\"EECS 233\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 281"]/*[[".cells.staticTexts[\"EECS 281\"]",".staticTexts[\"EECS 281\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 302"]/*[[".cells.staticTexts[\"EECS 302\"]",".staticTexts[\"EECS 302\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 340"]/*[[".cells.staticTexts[\"EECS 340\"]",".staticTexts[\"EECS 340\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 395"]/*[[".cells.staticTexts[\"EECS 395\"]",".staticTexts[\"EECS 395\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let doneButton = tablesQuery.buttons["Done"]
        doneButton.tap()
        
        let pickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["0"]/*[[".pickers.pickerWheels[\"0\"]",".pickerWheels[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pickerWheel.swipeUp()
        confirmButton.tap()
        pickerWheel/*@START_MENU_TOKEN@*/.press(forDuration: 0.7);/*[[".tap()",".press(forDuration: 0.7);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        confirmButton.tap()
        app.pickerWheels["Bachelor of Science"].swipeDown();
        confirmButton.tap()
        selectButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 121"]/*[[".cells.staticTexts[\"MATH 121\"]",".staticTexts[\"MATH 121\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 122 or MATH 124"]/*[[".cells.staticTexts[\"MATH 122 or MATH 124\"]",".staticTexts[\"MATH 122 or MATH 124\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 223 or MATH 227"]/*[[".cells.staticTexts[\"MATH 223 or MATH 227\"]",".staticTexts[\"MATH 223 or MATH 227\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 201 or MATH 307"]/*[[".cells.staticTexts[\"MATH 201 or MATH 307\"]",".staticTexts[\"MATH 201 or MATH 307\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["CHEM 111"]/*[[".cells.staticTexts[\"CHEM 111\"]",".staticTexts[\"CHEM 111\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ENGR 145"]/*[[".cells.staticTexts[\"ENGR 145\"]",".staticTexts[\"ENGR 145\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["PHYS 121 or PHYS 123"]/*[[".cells.staticTexts[\"PHYS 121 or PHYS 123\"]",".staticTexts[\"PHYS 121 or PHYS 123\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["PHYS 122 or PHYS 124"]/*[[".cells.staticTexts[\"PHYS 122 or PHYS 124\"]",".staticTexts[\"PHYS 122 or PHYS 124\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ENGR 398"]/*[[".cells.staticTexts[\"ENGR 398\"]",".staticTexts[\"ENGR 398\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ENGL 398"]/*[[".cells.staticTexts[\"ENGL 398\"]",".staticTexts[\"ENGL 398\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        doneButton.tap()
        pickerWheel/*@START_MENU_TOKEN@*/.press(forDuration: 1.4);/*[[".tap()",".press(forDuration: 1.4);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        confirmButton.tap()
        app/*@START_MENU_TOKEN@*/.pickerWheels["Completed"].press(forDuration: 0.7);/*[[".pickers.pickerWheels[\"Completed\"]",".tap()",".press(forDuration: 0.7);",".pickerWheels[\"Completed\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
        confirmButton.tap()
        app.scrollViews.otherElements/*@START_MENU_TOKEN@*/.pickerWheels["Software Engineering"].press(forDuration: 1.2);/*[[".pickers.pickerWheels[\"Software Engineering\"]",".tap()",".press(forDuration: 1.2);",".pickerWheels[\"Software Engineering\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
       
    }

}
