//
//  ContentView.swift
//  Shared
//
//  Created by Simeon Hristov on 27.10.22.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var backgroundColor = Color.white

    var body: some View {
        VStack (alignment: .center,
                spacing: 15) {
            Text ("Login Form")
                .font(Font.title)
                .foregroundColor(.accentColor)
            Image (systemName: "person")
                .imageScale(.large)
                .foregroundColor(.cyan)
            HStack (alignment: .center,
                    spacing: 5) {
                Text ("Username")
                TextField("",
                          text: $username,
                          prompt: Text("Enter Username"))
            }
            HStack (alignment: .center,
                    spacing: 5) {
                Text ("Password")
                SecureField("",
                            text: $password,
                            prompt: Text("Enter Password"))
                .disableAutocorrection(true)
            }
            Button {
                if username == "test" && password == "test" {
                    backgroundColor = .green
                    return
                }
                backgroundColor = .red
            } label: {
                Text("Log in")
            }.tint(.cyan).buttonStyle(.bordered)
        }.padding().background(backgroundColor)
    }
}
