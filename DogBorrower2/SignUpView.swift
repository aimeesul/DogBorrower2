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
                    
                    TextField("Username", text: $username)
                    
                    TextField("First name", text: $firstName)
                   
                    TextField("Surname", text: $surName)
                    
                    TextField("email", text: $email)
                    
                    Picker("Please choose one", selection: $selectedOwnerOrBorrower) {
                        ForEach(ownerOrBorrower, id: \.self) {
                            Text($0)
                        }.navigationBarBackButtonHidden(true)
                    }
                    
                    SecureField("Password", text: $password)
                    
                    SecureField("Confirm Password", text: $password)

                    NavigationLink(destination: ContentView()){
                        Button(action: {print("sldkjf")}) {
                            Text("Confirm")
                        }
                    }
                    
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            }
        }//.navigationBarBackButtonHidden(true)
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
