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
    @State var bio: String = ""
    @State var pass: Bool = false
    
    var body: some View {
        VStack {
            //            HStack{
            //                RoundedRectangle(cornerRadius: 25)
            //                RoundedRectangle(cornerRadius: 25)
            //                RoundedRectangle(cornerRadius: 25)
            //
            //                Image("plus")
            //                    .onTapGesture {
            //                        showingImagePicker = true
            //                    }
            //            }
            ZStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.secondary) .onTapGesture {
                        showingImagePicker = true
                    }
                
                
                Text("Tap the plus to select a picture")
                    .foregroundColor(.white)
                    .font(.headline)
                
                image?
                    .resizable()
                    .scaledToFit()
            }
            
            
            Spacer()
            
            TextField("Bio", text: $bio)
            
            NavigationLink(destination: TestView(), isActive: $pass){
                Button(action: {
                    self.pass=true
                    
                    for user in users {
                        if user.email == userEmail {
                            var user1=user
                            someFunc(&user1)
                            if let index = users.firstIndex(where: {$0 == user}) {
                              users.remove(at: index)
                            }
                            users.append(user1)
                        }
                    }
                    
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
            
            Button("Save") {
                
                
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
    }
    
    

}




struct SignUp2View_Previews: PreviewProvider {
    static var previews: some View {
        SignUp2View()
    }
}
