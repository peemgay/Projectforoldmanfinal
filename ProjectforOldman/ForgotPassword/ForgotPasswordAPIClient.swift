//
//  ForgotPasswordAPIClient.swift
//  KFC
//
//  Created by Kittinun Chobtham on 6/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

protocol ForgotPasswordAPIClient {
    func sendForgotPassword(optionalEmail: String?,
                            completion: @escaping (_ status: Bool, _ error: Error?) -> ())
}

final class ForgotPasswordAPIClientImplementation: ForgotPasswordAPIClient {
    
    func sendForgotPassword(optionalEmail: String?,
                            completion: @escaping (Bool, Error?) -> ()) {
        guard let email = optionalEmail else {
            completion(false, GeneralError.EmailInvalidAtForgotPassword)
            
            return
        }
        
        let emailIsRegisted = users.filter { $0.email == email }
        
        guard let _ = emailIsRegisted.first else {
            completion(false, GeneralError.EmailInvalidAtForgotPassword)
            return
        }
        
        completion(true, nil)
    }
    
}
