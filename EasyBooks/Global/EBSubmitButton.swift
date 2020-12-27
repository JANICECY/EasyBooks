//
//  EBSubmitButton.swift
//  EasyBooks
//
//  Created by Yiyao Zhang on 2020-12-26.
//

import SwiftUI

struct EBSubmitButton: View {
    var title: String
    var font: CGFloat = 20
    var backgroundColor: Color = Color.green
    var fontColor: Color = Color.white
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.horizontal)
            Text(title)
                .foregroundColor(fontColor)
                .font(.system(size: font, weight: .bold, design: .default))
        }
        .frame(height: 50)
    }
}

struct EBSubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        EBSubmitButton(title: "Submit")
    }
}
