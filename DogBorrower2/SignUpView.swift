//
//  SignUpView.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 08/04/2022.
//

import SwiftUI

struct SignUpView: View {
    @State private var password: String = ""
    @State private var firstName: String = ""
    @State private var surName: String = ""
    @State private var email: String = ""
    @State private var ownerOrBorrower = ["Dog Owner", "Dog Borrower"]
    @State private var selectedOwnerOrBorrower = "Dog Owner"
    @State private var bio: String = ""
    @State private var pass: Bool = false
    @State private var daysOfWeek = [dayOfWeek(name:"Monday"),dayOfWeek(name: "Tuesday"),dayOfWeek(name: "Wednesday"),dayOfWeek(name: "Thursday"),dayOfWeek(name: "Friday"),dayOfWeek(name: "Saturday"),dayOfWeek(name: "Sunday")]
    
    var body: some View {
        
        ZStack {
            VStack {
                Form {
                    Text("Sign up")
                        .font(.headline)
                    
                    TextField("First name", text: $firstName)
                    
                    TextField("Surname", text: $surName)
                    
                    TextField("email", text: $email)
                    
                    Picker("Please choose one", selection: $selectedOwnerOrBorrower) {
                        ForEach(ownerOrBorrower, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    SecureField("Password", text: $password)
                    
                    TextField("Bio", text: $bio)
                    
                    Spacer()
                    
                    Text("Which days are you available?:")
                    List{
                        ForEach(0..<daysOfWeek.count){ index in
                            HStack {
                                Button(action: {
                                    daysOfWeek[index].isSelected = daysOfWeek[index].isSelected ? false : true
                                }) {
                                    HStack{
                                        if daysOfWeek[index].isSelected {
                                            Image(systemName: "checkmark.circle.fill")
                                                .foregroundColor(.green)

                                        } else {
                                            Image(systemName: "circle")
                                                .foregroundColor(.primary)
                                        }
                                        Text(daysOfWeek[index].name)
                                    }
                                }.buttonStyle(BorderlessButtonStyle())
                            }
                        }
                    }
                }
                
                NavigationLink(destination: SignUp2View(), isActive: $pass){
                    Button(action: {
                        self.pass = true
                        someFunc()
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
                //.textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
                
            }
            
        }
    }
    
    
    func someFunc() {
        // if self.pass {
        var avalibilty = [dayOfWeek]()
        for day in daysOfWeek{
            if day.isSelected {
                avalibilty.append(day)
            }
        }
        

        currentUser = User(password: self.password, email: self.email, ownerOrBorrower: self.selectedOwnerOrBorrower, firstName: self.firstName, surName: self.surName, image: Image("logo"),bio: self.bio, availability: avalibilty, liked: [])
       // userEmail = newUser.email
        if (currentUser.ownerOrBorrower=="Dog Owner") {
            dogOwners.append(currentUser)
        } else {
            dogBorrowers.append(currentUser)
        }
        //print(users)
        // }
    }
    
}



struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


