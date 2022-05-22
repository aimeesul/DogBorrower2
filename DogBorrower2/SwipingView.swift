//
//  SwipingView.swift
//  DogBorrower2
//
//  Created by Aimee Sullivan on 21/05/2022.
//

import SwiftUI
import UIKit

struct SwipingView: View {
    @State var like = [User]()
    
    var body: some View {
        
        Form{
            VStack {
                ZStack {
                    
                    u1.image .resizable()
                        .padding(.all)
                        .scaledToFit()
                    
                }
                
                HStack{
                    Button(action: {

                        for user in users{
                            if currentUser.ownerOrBorrower=="Dog Owner" && user.ownerOrBorrower=="Dog Borrower" {
                                u1 = user
                            }
                            
                            if currentUser.ownerOrBorrower=="Dog Borrower" && user.ownerOrBorrower=="Dog Owner" {
                                u1 = user
                            }
                            print(u1)
                            
                        }}){
                            Image("no")
                            
                        }
                    Spacer()
                    Text(u1.firstName).font(.largeTitle)
                    Spacer()
                    Button(action: {
                        for user in users{
                            if currentUser.ownerOrBorrower=="Dog Owner" && user.ownerOrBorrower=="Dog Borrower" {
                                u1 = user
                                like.append(user)
                            }
                            
                            if currentUser.ownerOrBorrower=="Dog Borrower" && user.ownerOrBorrower=="Dog Owner" {
                                u1 = user
                                like.append(user)
                            }
                            print(u1)
                            currentUser.liked=like
                            
                        }}){
                            Image("yes")
                            
                        }
                    
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
