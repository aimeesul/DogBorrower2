//
//  TestView.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 08/04/2022.
//

import SwiftUI

let storedUsername = "Myusername"
let storedPassword = "Mypassword"

struct TestView : View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    @State var editingMode: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack {
                Image("logo")
                    .resizable()
                    .padding(.all)
                    .scaledToFit()
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
                if authenticationDidFail {
                    Text("Information not correct. Try again.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                Button(action: {
                    for user in users {
                        if self.username == user.userName && self.password == user.password {
                            self.authenticationDidSucceed = true
                            self.authenticationDidFail = false
                            
                        } else {
                            self.authenticationDidFail = true
                        }
                    }
                }) {
                    LoginButtonContent()
                }
                }
                .padding()
            if authenticationDidSucceed {
                Text("Login succeeded!")
                    .font(.headline)
                    .frame(width: 250, height: 80)
                    .background(Color.green)
                    .cornerRadius(20.0)
                    .foregroundColor(.white)
                
            }
        }
            .offset(y: editingMode ? -150 : 0)
    }
}

#if DEBUG
struct TestView_Previews : PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
#endif

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
