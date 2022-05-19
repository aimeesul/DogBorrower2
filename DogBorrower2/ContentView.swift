//
//  ContentView.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 05/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    @State var authenticationFail: Bool = false
    @State var authenticationPass: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("logo")
                        .resizable()
                        .padding(.all)
                        .scaledToFit()
                    
                    TextField("Email", text: $email).textInputAutocapitalization(.never).disableAutocorrection(true)
                    
                    SecureField("Password", text: $password).textInputAutocapitalization(.never).disableAutocorrection(true)
                    
                    if (authenticationFail && authenticationPass==false) {
                        Text("Information not correct. Try again.")
                            .offset(y: -10)
                            .foregroundColor(.red)
                    }
                    
                    NavigationLink(destination: TestView(), isActive: $authenticationPass){
                        Button(action: {
                            for user in users {
                                if self.email == user.email && self.password == user.password {
                                    self.authenticationPass = true
                                    self.authenticationFail = false
                                    
                                } else {
                                    self.authenticationFail = true
                                }
                            }
                        }) {
                            Text("LOGIN")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 60)
                                .background(Color.green)
                                .cornerRadius(15.0)
                        }
                    }
                    
                    NavigationLink(destination: SignUpView()){
                            Text("SIGN UP")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 60)
                                .background(Color.green)
                                .cornerRadius(15.0)
                    }
                    
                    
                    
                }
                .padding()
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
