//
//  ViewControllerCoreTest.swift
//  Graduation RequirementTests
//
//  Created by Shiqing.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class ViewControllerCoreTest: XCTestCase {

    override func setUp() {
        // Setup code here

        // Stop immediately when a failure occurs.
        continueAfterFailure = false

        // launch the application
        XCUIApplication().launch()

    }

    override func tearDown() {
        // teardown code here
    }
    
    /*Test the correct functionality of users selecting which major core courses they have
       already taken*/
    func testCoreCaseAdd() {
        
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].press(forDuration: 0.5);
        app.buttons["Confirm"].tap()
        app.buttons["Select"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 132"]/*[[".cells.staticTexts[\"EECS 132\"]",".staticTexts[\"EECS 132\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 233"]/*[[".cells.staticTexts[\"EECS 233\"]",".staticTexts[\"EECS 233\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 281"]/*[[".cells.staticTexts[\"EECS 281\"]",".staticTexts[\"EECS 281\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 302"]/*[[".cells.staticTexts[\"EECS 302\"]",".staticTexts[\"EECS 302\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 340"]/*[[".cells.staticTexts[\"EECS 340\"]",".staticTexts[\"EECS 340\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 395"]/*[[".cells.staticTexts[\"EECS 395\"]",".staticTexts[\"EECS 395\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.buttons["Done"].tap()
      
    }
    
    func testCoreCaseRemove() {
        
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].tap()
        app.buttons["Confirm"].tap()
        app.buttons["Select"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 132"]/*[[".cells.staticTexts[\"EECS 132\"]",".staticTexts[\"EECS 132\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 233"]/*[[".cells.staticTexts[\"EECS 233\"]",".staticTexts[\"EECS 233\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let eecs281StaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 281"]/*[[".cells.staticTexts[\"EECS 281\"]",".staticTexts[\"EECS 281\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        eecs281StaticText.tap()
        
        let eecs302StaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["EECS 302"]/*[[".cells.staticTexts[\"EECS 302\"]",".staticTexts[\"EECS 302\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        eecs302StaticText.tap()
        eecs302StaticText.tap()
        eecs281StaticText.tap()
        tablesQuery.buttons["Done"].tap()
        
    }

}
