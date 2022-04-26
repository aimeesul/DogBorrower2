//
//  ContentView.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 05/04/2022.
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView{
            VStack(
                alignment: .center
            ) {
                Image("logo")
                    .resizable()
                    .padding(.all)
                    .scaledToFit()
                
                Form{
                    TextField("Username", text: $username)
                    
                    SecureField("Password", text: $password)
                    
                    NavigationLink(destination: SignUpView()){
                        Text("Sign up")
                            .font(.headline)
                    }
                    
                    NavigationLink(destination: TestView()){
                        Text("Log in")
                            .font(.headline)
                    }
                    
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            }
        }//.navigationBarHidden(true)
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
