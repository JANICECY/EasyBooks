//
//  MainView.swift
//  EasyBooks
//
//  Created by Yiyao Zhang on 2020-12-26.
//

import SwiftUI

struct LandingView: View {
    @EnvironmentObject var userData: UserLoginData
    
    var body: some View {
        if userData.isLoggedIn {
            MainView()
                .environmentObject(self.userData)
        } else {
            LoginView()
                .environmentObject(self.userData)
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(UserLoginData())
    }
}
