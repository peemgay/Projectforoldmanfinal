//
//  ForgotPasswordAPIManager.swift
//  KFC
//
//  Created by Kittinun Chobtham on 6/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

protocol ForgotPasswordAPIManager {
    func sendForgotPassword(optionalEmail: String?)
    func setDelegate(_ delegate: ForgotPasswordAPIManagerDelegate)
}

protocol ForgotPasswordAPIManagerDelegate {
    func didSendForgotPasswordCompletion()
    func didSendForgotPasswordFailure(error: Error)
}

final class ForgotPasswordAPIManagerImplementation: ForgotPasswordAPIManager {
    
    var delegate: ForgotPasswordAPIManagerDelegate?
    let apiClient: ForgotPasswordAPIClient
    
    init(apiClient: ForgotPasswordAPIClient = ForgotPasswordAPIClientImplementation()) {
        self.apiClient = apiClient
    }
    
    func setDelegate(_ delegate: ForgotPasswordAPIManagerDelegate) {
        self.delegate = delegate
    }
    
    func sendForgotPassword(optionalEmail: String?) {
        apiClient.sendForgotPassword(optionalEmail: optionalEmail)
        { (status, optionalError) in
            if let error = optionalError {
                self.delegate?.didSendForgotPasswordFailure(error: error)
                
                return
            }
            
            if status {
                self.delegate?.didSendForgotPasswordCompletion()
            }
        }
    }
    
}
