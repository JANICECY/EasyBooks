//
//  EasyBooksApp.swift
//  EasyBooks
//
//  Created by Yiyao Zhang on 2020-12-25.
//

import SwiftUI

@main
struct EasyBooksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LandingView()
                .environmentObject(UserLoginData())
        }
    }
}
