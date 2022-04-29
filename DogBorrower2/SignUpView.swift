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
    @State var pass: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack {
                Form {
                    Text("Sign up")
                        .font(.headline)
                    
                    TextField("Username", text: $username)
                    
                    TextField("First name", text: $firstName)
                    
                    TextField("Surname", text: $surName)
                    
                    TextField("email", text: $email)
                    
                    Picker("Please choose one", selection: $selectedOwnerOrBorrower) {
                        ForEach(ownerOrBorrower, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    SecureField("Password", text: $password)
                    
                    SecureField("Confirm Password", text: $password)
                    
                    
                    
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
                NavigationLink(destination: TestView()){
                    Button(action: {
                        self.pass = true
                    }) {
                        Text("CONFIRM")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color.green)
                            .cornerRadius(15.0)
                    }
                }
            }
        }
    }
    
    if (self.pass==true) {
        let newUser = User(userName: self.username, password: self.password, email: self.email, ownerOrBorrower: self.selectedOwnerOrBorrower, firstName: self.firstName, surName: self.surName)
        users.append(newUser)
        print(users)
    }
}



struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
