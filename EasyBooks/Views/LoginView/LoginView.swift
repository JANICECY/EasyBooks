//
//  LoginView.swift
//  EasyBooks
//
//  Created by Yiyao Zhang on 2020-12-26.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var data: UserLoginData
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            VStack {
                
            }
            Spacer()
            content
            Spacer()
            VStack {
                HStack {
                    Text("EasyBooks")
                }
            }
        }
    }
    
    var content: some View {
        VStack {
            Text("Welcome to EasyBooks")
                .padding(.bottom, 10)
            TextField("Username", text: $username)
                .padding(.bottom, 10)
            TextField("Password", text: $password)
                .padding(.bottom, 10)
            Button(action: {
                // todo verify login
                let user = User(uid: 1, firstname: "abc", lastname: "Stroll", token: "123", email: "some@gamil.com") //todo remove dummy data
                data.user = user
            }, label: {
                EBSubmitButton(title: "Sign In")
            })
                
        }
        .padding(.all, 10)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(UserLoginData())
    }
}
