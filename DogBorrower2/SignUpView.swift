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
    var ownerOrBorrower = ["Dog Owner", "Dog Borrower"]
    @State private var selectedOwnerOrBorrower = "Dog Owner"
    @State private var bio: String = ""
    @State var pass: Bool = false
    
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var image: Image?
    
    
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
                }
                
                
                
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .padding([.horizontal, .bottom])
            
            Spacer()
            
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.secondary) .onTapGesture {
                    showingImagePicker = true
                }
            
            
            Text("Tap the plus to select a picture")
                .foregroundColor(.white)
                .font(.headline)
            
            image?
                .resizable()
                .padding(.all)
                .scaledToFit()
                .onChange(of: inputImage) { _ in loadImage() }
                .sheet(isPresented: $showingImagePicker) {
                    ImagePicker(image: $inputImage)
                    
                    
                }
            
            
            Spacer()
            
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
            
        }
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
    
    
    func someFunc() {
        // if self.pass {
        let newUser = User(password: self.password, email: self.email, ownerOrBorrower: self.selectedOwnerOrBorrower, firstName: self.firstName, surName: self.surName, image: image ?? Image("logo"), bio: self.bio)
        userEmail = newUser.email
        users.append(newUser)
        print(users)
        // }
    }
    
}



struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
