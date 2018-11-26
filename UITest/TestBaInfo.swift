//
//  TestBaInfo.swift
//  Graduation RequirementTests
//
//  Created by Shiqing.
//  Copyright © 2018 EECS393. All rights reserved.
//

import XCTest

class TestBaInfo: XCTestCase {

    override func setUp() {
        // setup code here
        continueAfterFailure = false

        //launch the application
        XCUIApplication().launch()

    }

    override func tearDown() {
       
    }

    /* Test the correct functionality of choosing general requirement courses for users who choose
       Bachelor of Arts as their degree*/
    
    func testExample() {
        
        let app = XCUIApplication()
        app.pickerWheels["Spring 2020"].press(forDuration: 0.7);
        
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
        
        let doneButton = tablesQuery.buttons["Done"]
        doneButton.tap()
        
        let pickerWheel = app/*@START_MENU_TOKEN@*/.pickerWheels["0"]/*[[".pickers.pickerWheels[\"0\"]",".pickerWheels[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pickerWheel/*@START_MENU_TOKEN@*/.press(forDuration: 2.1);/*[[".tap()",".press(forDuration: 2.1);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        confirmButton.tap()
        pickerWheel.tap()
        confirmButton.tap()
        app/*@START_MENU_TOKEN@*/.pickerWheels["Bachelor of Science"]/*[[".pickers.pickerWheels[\"Bachelor of Science\"]",".pickerWheels[\"Bachelor of Science\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp() //Choose BA as the degree
        confirmButton.tap()
        selectButton.tap()
        //Select all the courses they have taken
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 125"]/*[[".cells.staticTexts[\"MATH 125\"]",".staticTexts[\"MATH 125\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 126"]/*[[".cells.staticTexts[\"MATH 126\"]",".staticTexts[\"MATH 126\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.staticTexts["Department Seminar"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Arts & Humanities I"]/*[[".cells.staticTexts[\"Arts & Humanities I\"]",".staticTexts[\"Arts & Humanities I\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Arts & Humanities II"]/*[[".cells.staticTexts[\"Arts & Humanities II\"]",".staticTexts[\"Arts & Humanities II\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Natural Sciences I"]/*[[".cells.staticTexts[\"Natural Sciences I\"]",".staticTexts[\"Natural Sciences I\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Natural Sciences II"]/*[[".cells.staticTexts[\"Natural Sciences II\"]",".staticTexts[\"Natural Sciences II\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        doneButton.tap()
    }
    
    func testInfoRemove() {
        
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.pickerWheels["Spring 2020"].press(forDuration: 1.2);/*[[".pickers.pickerWheels[\"Spring 2020\"]",".tap()",".press(forDuration: 1.2);",".pickerWheels[\"Spring 2020\"]"],[[[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
        
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
        pickerWheel.swipeUp()
        confirmButton.tap()
        app.pickerWheels["Bachelor of Science"].swipeUp();
        confirmButton.tap()
        selectButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 125"]/*[[".cells.staticTexts[\"MATH 125\"]",".staticTexts[\"MATH 125\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["MATH 126"]/*[[".cells.staticTexts[\"MATH 126\"]",".staticTexts[\"MATH 126\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Department Seminar"]/*[[".cells.staticTexts[\"Department Seminar\"]",".staticTexts[\"Department Seminar\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Arts & Humanities I"]/*[[".cells.staticTexts[\"Arts & Humanities I\"]",".staticTexts[\"Arts & Humanities I\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Arts & Humanities II"]/*[[".cells.staticTexts[\"Arts & Humanities II\"]",".staticTexts[\"Arts & Humanities II\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Natural Sciences I"]/*[[".cells.staticTexts[\"Natural Sciences I\"]",".staticTexts[\"Natural Sciences I\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Natural Sciences II"]/*[[".cells.staticTexts[\"Natural Sciences II\"]",".staticTexts[\"Natural Sciences II\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Social Sciences I"]/*[[".cells.staticTexts[\"Social Sciences I\"]",".staticTexts[\"Social Sciences I\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Social Sciences II"]/*[[".cells.staticTexts[\"Social Sciences II\"]",".staticTexts[\"Social Sciences II\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Quantitative Reasoning"]/*[[".cells.staticTexts[\"Quantitative Reasoning\"]",".staticTexts[\"Quantitative Reasoning\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let globalCulturalDiversityStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Global & Cultural Diversity"]/*[[".cells.staticTexts[\"Global & Cultural Diversity\"]",".staticTexts[\"Global & Cultural Diversity\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        globalCulturalDiversityStaticText.tap()
        
        let firstYearSeminarStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["First Year Seminar"]/*[[".cells.staticTexts[\"First Year Seminar\"]",".staticTexts[\"First Year Seminar\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        firstYearSeminarStaticText.tap()
        
        let universitySeminarIStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["University Seminar I"]/*[[".cells.staticTexts[\"University Seminar I\"]",".staticTexts[\"University Seminar I\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        universitySeminarIStaticText.tap()
        
        let universitySeminarIiStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["University Seminar II"]/*[[".cells.staticTexts[\"University Seminar II\"]",".staticTexts[\"University Seminar II\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        universitySeminarIiStaticText.tap()
        universitySeminarIiStaticText.tap()
        universitySeminarIStaticText.tap()
        firstYearSeminarStaticText.tap()
        globalCulturalDiversityStaticText.tap()
        doneButton.tap()
        pickerWheel.swipeUp()
        confirmButton.tap()
        app.buttons["Generate Course Schedule"].tap()
        
        let spring2019StaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Spring 2019"]/*[[".cells.staticTexts[\"Spring 2019\"]",".staticTexts[\"Spring 2019\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        spring2019StaticText.tap()
        spring2019StaticText.tap()
        
    }

}
