//
//  SignUpView.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 08/04/2022.
//

import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var firstName: String = ""
    @State private var surName: String = ""
    @State private var email: String = ""
    var ownerOrBorrower = ["Dog Owner", "Dog Borrower"]
    @State private var selectedOwnerOrBorrower = "Dog Owner"
    
    var body: some View {
        NavigationView{
            VStack(
                alignment: .center
            ) {
                
                Form{
                    Text("Sign up")
                        .font(.headline)
                    TextField(text: $username, prompt: Text("Username")) {
                        
                    }
                    
                    TextField(text: $firstName, prompt: Text("First name")) {
                        
                    }
                    
                    TextField(text: $surName, prompt: Text("Surname")) {
                        
                    }
                    
                    TextField(text: $email, prompt: Text("Email")) {
                        
                    }
                    
                    Picker("Please choose one", selection: $selectedOwnerOrBorrower) {
                        ForEach(ownerOrBorrower, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    SecureField(text: $password, prompt: Text("Password")) {
                        
                    }
                    
                    SecureField(text: $password, prompt: Text("Confirm password")) {
                        
                    }
                    
                    NavigationLink(destination: TestView()){
                        Text("Confirm")
                            .font(.headline)
                    }
                    
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            }
        }.navigationBarBackButtonHidden(true)
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
