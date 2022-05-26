//
//  ContentView.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 05/04/2022.
//

import SwiftUI

var currentUser = User(password: "", email: "", ownerOrBorrower: "", firstName: "", surName: "", image: Image("logo"), bio: "", liked: [])

//var ind1 = 0

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
                    
                    //if #available(iOS 15.0, *) {
                        TextField("Email", text: $email)//.disableAutocorrection(true).textInputAutocapitalization(.never)
                  //  } else {
                        // Fallback on earlier versions
                  //  }
                    
                    SecureField("Password", text: $password).disableAutocorrection(true)//.textInputAutocapitalization(.never
                    
                    if (authenticationFail && authenticationPass==false) {
                        Text("Information not correct. Try again.")
                            .offset(y: -10)
                            .foregroundColor(.red)
                    }
                    
                    NavigationLink(destination: SwipingView(), isActive: $authenticationPass){
                        Button(action: {
                            for user in dogOwners {
                                if self.email == user.email && self.password == user.password {
                                    self.authenticationPass = true
                                    self.authenticationFail = false
                                    currentUser = user
                                    
                                } else {
                                    self.authenticationFail = true
                                }
                            }
                            
                            for user in dogBorrowers {
                                if self.email == user.email && self.password == user.password {
                                    self.authenticationPass = true
                                    self.authenticationFail = false
                                    currentUser = user
                                    
                                } else {
                                    self.authenticationFail = true
                                }
                            }
                            
//                            if currentUser.ownerOrBorrower=="Dog Owner" {
//                                if let ind2=users.firstIndex(where: {$0.ownerOrBorrower == "Dog Borrower"}) {
//                                    ind1=ind2
//                                }
//                            }
//
//                            if currentUser.ownerOrBorrower=="Dog Borrower" {
//                                if let ind2=users.firstIndex(where: {$0.ownerOrBorrower == "Dog Owner"}) {
//                                    ind1=ind2
//                                }
//                            }
                            
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
