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
    @State private var bio = ""
    @State private var daysOfWeek = [dayOfWeek(name:"Monday"),dayOfWeek(name: "Tuesday"),dayOfWeek(name: "Wednesday"),dayOfWeek(name: "Thursday"),dayOfWeek(name: "Friday"),dayOfWeek(name: "Saturday"),dayOfWeek(name: "Sunday")]
    
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
            
            
            Spacer()
            
            
            NavigationLink(destination: SwipingView(), isActive: $pass){
                Button(action: {
                    self.pass=true
                    someFunc(&currentUser)
                    
                    if currentUser.ownerOrBorrower=="Dog Owner" {
                        if let u2=users.first(where: {$0.ownerOrBorrower == "Dog Borrower"}) {
                            u1=u2
                        }
                    }
                    
                    if currentUser.ownerOrBorrower=="Dog Borrower" {
                        if let u2=users.first(where: {$0.ownerOrBorrower == "Dog Owner"}) {
                            u1=u2
                        }
                    }
                    
                
//                    for user in users {
//                        if user.email == userEmail {
//                            someFunc(&user)
//
//                        }
//                    }
                    
                    print(users)
                    
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
        user.bio = self.bio
        
        var avalibilty = [dayOfWeek]()
        for day in daysOfWeek{
            if day.isSelected {
                avalibilty.append(day)
            }
        }
        
        user.availability = avalibilty
        // user.bio = self.bio
    }
    
    
    
}




struct SignUp2View_Previews: PreviewProvider {
    static var previews: some View {
        SignUp2View()
    }
}
