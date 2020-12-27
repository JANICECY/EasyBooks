//
//  UserLoginData.swift
//  EasyBooks
//
//  Created by Yiyao Zhang on 2020-12-26.
//

import Foundation

final class UserLoginData: ObservableObject {
    @Published var user: User?
    var isLoggedIn: Bool {
        user != nil
    }
}
