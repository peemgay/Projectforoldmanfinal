//
//  ViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 26/5/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import XCTest
@testable import ProjectforOldman

class ProjectforOldmanTests : XCTestCase {

    var viewController: SigninViewController?
    
    override func setUpWithError() throws {
        viewController = SigninViewController()
    }

    override func tearDownWithError() throws {
        viewController = nil
    }

    func testInputEmailIsCorrected() {
        let emailTextField = UITextField()
    
        viewController?.emailTextField = emailTextField
        
        emailTextField.text = "Peem"
        
        XCTAssertNotNil(viewController?.emailTextField.text)
    }
    
    func testInputEmailIsBlank() {
        let emailTextField = UITextField()
        
        viewController?.emailTextField = emailTextField
        
        XCTAssertEqual(viewController?.emailTextField.text, "")
    }
    
}
