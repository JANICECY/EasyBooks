//
//  CircleImage.swift
//  EasyBooks
//
//  Created by Ying Chen on 2020-12-26.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("ts")
            .resizable()
            .clipShape(Circle())
//            .overlay(Circle().stroke(Color.white, lineWidth: 4))
//            .shadow(radius: 7)
            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage().previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
