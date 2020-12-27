//
//  User.swift
//  EasyBooks
//
//  Created by Yiyao Zhang on 2020-12-26.
//

import Foundation

class User {
    var uid: Int
    var firstname: String
    var lastname: String
    var token: String
    var email: String
    
    init(uid: Int, firstname: String, lastname: String, token: String, email: String) {
        self.uid = uid
        self.firstname = firstname
        self.lastname = lastname
        self.token = token
        self.email = email
    }
    
}
