//
//  TestView.swift
//  DogBorrower2
//
//  Created by Aimee Sullivan on 29/04/2022.
//

import SwiftUI

struct TestView: View {
        @State private var showingImagePicker = false
        @State private var inputImage: UIImage?
        @State private var image: Image?
        @State var bio: String = ""
        @State var pass: Bool = false
        
        var body: some View {
            //Text("Hello world")
            VStack {
                ZStack {

                    RoundedRectangle(cornerRadius: 25)
                        .fill(.secondary).onTapGesture {

                            image = currentUser.image.renderingMode(.original)

                        }

                    Text("Tap the plus to select a picture")
                        .foregroundColor(.white)
                        .font(.headline)

                    image?
                        .resizable()
                        .scaledToFit()
                }


                Spacer()




            }
            .padding([.horizontal, .bottom])


            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(image: $inputImage)
            }
        }


        func someFunc(_ user: inout User) {
            user.image = image ?? Image("logo")
        }
        
        

    }


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
