//
//  LoginView.swift
//  LayoutExercise
//
//  Created by Simeon Hristov on 13.11.22.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {

            Spacer()

            Image("forest")
                .resizable()
                .aspectRatio(contentMode: .fit)

            HStack {
                Spacer()
                Text("Welcome to the Forest App")
                    .foregroundColor(Colors.mainGreen)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            .padding(.top, 10)


            TextField("",
                      text: $username,
                      prompt: Text("Username..."))
            .frame(height: 48)
            .padding(.leading, 25)
            .padding(.trailing, 25)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke()
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .foregroundColor(Colors.mainGreen)
            )
            .padding(.top, 25)
            .foregroundColor(Colors.darkGrey)

            SecureField("",
                      text: $password,
                      prompt: Text("Password..."))
            .frame(height: 48)
            .padding(.leading, 25)
            .padding(.trailing, 25)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke()
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .foregroundColor(Colors.mainGreen)
            )
            .padding(.top, 15)
            .foregroundColor(Colors.darkGrey)

            Button {
                print("login")
            } label: {
                Text("Login")
                    .padding(.init(top: 5,
                                   leading: 35,
                                   bottom: 5,
                                   trailing: 35))
            }
            .buttonStyle(.bordered)
            .tint(Colors.mainGreen)
            .padding()

            Spacer()

            HStack() {
                Text("Don't have an account?")
                Button("Join now") {
                }
                .foregroundColor(Colors.mainGreen   )
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
