//
//  MainView.swift
//  EasyBooks
//
//  Created by Yiyao Zhang on 2020-12-26.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var userData: UserLoginData
    
    var body: some View {
        TabView{
            DashboardView().tabItem {
                Image(systemName: "list.dash")
                Text("Dashboard")
            }.tag(1)
            Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(UserLoginData())
    }
}
