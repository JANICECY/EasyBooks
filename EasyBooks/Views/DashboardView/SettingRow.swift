//
//  SettingRow.swift
//  EasyBooks
//
//  Created by Ying Chen on 2020-12-27.
//

import SwiftUI

struct SettingRow: View {
    var settingName: String
    var body: some View {
        Text(settingName)
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingRow(settingName: "feedback")
    }
}
