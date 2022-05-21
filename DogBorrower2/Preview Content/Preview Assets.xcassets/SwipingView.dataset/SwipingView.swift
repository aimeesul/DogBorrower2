//
//  SwipingView.swift
//  DogBorrower2
//
//  Created by Greg Martin on 21/05/2022.
//

import SwiftUI

struct SwipingView: View {
    var body: some View {
        VStack {
            Form{
                ZStack {
                    currentUser.image .resizable()
                        .padding(.all)
                        .scaledToFit()
                    HStack {
                        Image("no")
                        Image("yes")
                    }

                }
                
                Text(currentUser.firstName).font(.headline)
                
            }
        }
    }
}

struct SwipingView_Previews: PreviewProvider {
    static var previews: some View {
        SwipingView()
    }
}
