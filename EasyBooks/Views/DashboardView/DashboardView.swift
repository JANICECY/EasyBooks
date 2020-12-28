//
//  DashboardView.swift
//  EasyBooks
//
//  Created by Yiyao Zhang on 2020-12-26.
//

import SwiftUI

struct DashboardView: View {
    let settings = [
        Setting(settingTitle: "Feedback", destination: AnyView(FeedBackView())),
        Setting(settingTitle: "Help", destination: AnyView(FeedBackView())),
        Setting(settingTitle: "About Us", destination: AnyView(FeedBackView())),
    ]
    var body: some View {
        NavigationView() {
            VStack {
                banner
                Divider()
                settingList
            }
        }    
    }
    
    var banner: some View {
        VStack {
            CircleImage()
                .offset(y: 30)
                .padding(.bottom, 30)
            Text("Username here")
                .padding(.bottom, 30)
                
        }
    }
    
    var settingList: some View {
        List(settings, id: \.settingTitle) { setting in
            NavigationLink(destination: setting.destination) {
                SettingRow(settingName: setting.settingTitle)
            }.edgesIgnoringSafeArea(.horizontal)
        }

        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView().previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
