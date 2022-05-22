//
//  SwipingView.swift
//  DogBorrower2
//
//  Created by Aimee Sullivan on 21/05/2022.
//

import SwiftUI
import UIKit

struct SwipingView: View {
    var body: some View {
        Form{
            VStack {
                ZStack {
                    currentUser.image .resizable()
                        .padding(.all)
                        .scaledToFit()
                    
                }
                
                HStack{
                    Image("no")
                    Spacer()
                    Text(currentUser.firstName).font(.largeTitle)
                    Spacer()
                    Image("yes")
                    
                }
            }
            
            
            
        }
        
    }
}

struct SwipingView_Previews: PreviewProvider {
    static var previews: some View {
        SwipingView()
    }
}
