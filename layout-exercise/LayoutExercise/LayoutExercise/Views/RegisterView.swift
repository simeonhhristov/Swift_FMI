//
//  ContentView.swift
//  LayoutExercise
//
//  Created by Simeon Hristov on 13.11.22.
//

import SwiftUI

struct RegisterView: View {
    @State var username = ""
    @State var name = ""
    @State var phone = ""
    @State var password = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Spacer()

            Group {
                Text("Username")
                    .padding(.leading, 15)
                TextField("",
                          text: $username,
                          prompt: Text("Enter username"))
                .frame(height: 48)
                .padding(.leading, 25)
                .padding(.trailing, 25)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(lineWidth: 1.2)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .foregroundColor(Colors.mainGreen)
                )
                .foregroundColor(Colors.darkGrey)

                Text("Name")
                    .padding(.leading, 15)
                    .padding(.top, 20)
                TextField("",
                          text: $name,
                          prompt: Text("Enter name"))
                .frame(height: 48)
                .padding(.leading, 25)
                .padding(.trailing, 25)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(lineWidth: 1.2)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .foregroundColor(Colors.mainGreen)
                )
                .foregroundColor(Colors.darkGrey)

                Text("Phone")
                    .padding(.leading, 15)
                    .padding(.top, 20)
                TextField("",
                          text: $phone,
                          prompt: Text("Enter phone number"))
                .frame(height: 48)
                .padding(.leading, 25)
                .padding(.trailing, 25)
                .keyboardType(.numberPad)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(lineWidth: 1.2)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .foregroundColor(Colors.mainGreen)
                )
                .foregroundColor(Colors.darkGrey)

                Text("Pasword")
                    .padding(.leading, 15)
                    .padding(.top, 20)
                SecureField("",
                            text: $password,
                            prompt: Text("Enter password"))
                .frame(height: 48)
                .padding(.leading, 25)
                .padding(.trailing, 25)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(lineWidth: 1.2)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .foregroundColor(Colors.mainGreen)
                )
                .foregroundColor(Colors.darkGrey)
            }

            Button{
                print("register")
            } label: {
                Text("Register")
                    .padding(.init(top: 5,
                                   leading: 10,
                                   bottom: 5,
                                   trailing: 10))
            }
            .padding(.top, 60)
            .padding(.leading, 15)
            .buttonStyle(.bordered)
            .tint(Colors.mainGreen)

            Spacer()

            HStack(alignment: .center, spacing: 5) {
                Text("Have an account!")
                Button("Login") {
                    print("login")
                }
                .foregroundColor(Colors.mainGreen)
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
