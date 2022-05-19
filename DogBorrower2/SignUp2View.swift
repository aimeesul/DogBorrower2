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
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(.secondary)

                    Text("Tap to select a picture")
                        .foregroundColor(.white)
                        .font(.headline)

                    image?
                        .resizable()
                        .scaledToFit()
                }
                .onTapGesture {
                    showingImagePicker = true
                }

                    Spacer()

                    Button("Save") {
                        // save the picture
                    
                }
            }
            .padding([.horizontal, .bottom])
            .onChange(of: inputImage) { _ in loadImage() }
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(image: $inputImage)
            }
        }
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct SignUp2View_Previews: PreviewProvider {
    static var previews: some View {
        SignUp2View()
    }
}
