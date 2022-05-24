//
//  SignUp2View.swift
//  DogBorrower2
//
//  Created by Aimee Sullivan on 19/05/2022.
//

import SwiftUI

struct SignUp2View: View {
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var image: Image?
    @State private var pass: Bool = false
    
    
    var body: some View {
        VStack {
            Form{
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill() .onTapGesture {
                            showingImagePicker = true
                        }
                    
                    
                    Text("Tap to select a picture")
                        .foregroundColor(.white)
                        .font(.headline)
                    
                    image?
                        .resizable()
                        .scaledToFit()
                }

            }
            
            
            Spacer()
            
            
            NavigationLink(destination: SwipingView(), isActive: $pass){
                Button(action: {
                    self.pass=true
                    someFunc(&currentUser)
                    
//                    if currentUser.ownerOrBorrower=="Dog Owner" {
//                        if let ind2=users.firstIndex(where: {$0.ownerOrBorrower == "Dog Borrower"}) {
//                            ind1=ind2
//                        }
//                    }
//
//                    if currentUser.ownerOrBorrower=="Dog Borrower" {
//                        if let ind2=users.firstIndex(where: {$0.ownerOrBorrower == "Dog Owner"}) {
//                            ind1=ind2
//                        }
//                    }
                    
                
//                    for user in users {
//                        if user.email == userEmail {
//                            someFunc(&user)
//
//                        }
//                    }
                    
                    //print(users)
                    
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
        .padding([.horizontal, .bottom])
        
        .onChange(of: inputImage) { _ in loadImage() }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(image: $inputImage)
        }
    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
    
    func someFunc(_ user: inout User) {
        user.image = image ?? Image("logo")

        
        
        // user.bio = self.bio
    }
    
    
    
}




struct SignUp2View_Previews: PreviewProvider {
    static var previews: some View {
        SignUp2View()
    }
}
