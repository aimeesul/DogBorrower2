//
//  SwipingView.swift
//  DogBorrower2
//
//  Created by Aimee Sullivan on 21/05/2022.
//

import SwiftUI
import UIKit

struct SwipingView: View {
    // @State var like = [String]()
    
    @State var ind3 = 0
    @State var pass = false
    
    var body: some View {
        Form{
            VStack {
                ZStack {
                    if currentUser.ownerOrBorrower=="Dog Owner" {
                        dogBorrowers[ind3].image .resizable()
                            .padding(.all)
                            .scaledToFit()
                    } else {
                        dogOwners[ind3].image .resizable()
                            .padding(.all)
                            .scaledToFit()
                    }
                    
                }
                
                HStack{
                    Button( action: {
                        
                        if currentUser.ownerOrBorrower=="Dog Owner" {
                            if(ind3+1<dogBorrowers.count){
                                ind3+=1
                            }
                        } else {
                            if(ind3+1<dogOwners.count){
                                ind3+=1
                            }
                        }
                        
                       
                        
                        
                        //                        for user in users{
                        //                            if currentUser.ownerOrBorrower=="Dog Owner" && user.ownerOrBorrower=="Dog Borrower" {
                        //                                u3 = user
                        //                            }
                        //
                        //                            if currentUser.ownerOrBorrower=="Dog Borrower" && user.ownerOrBorrower=="Dog Owner" {
                        //                                u3 = user
                        //                            }
                        // print(u3)
                        
                    }){
                        Image("no")
                        
                    }
                    Spacer()
                    if currentUser.ownerOrBorrower == "Dog Owner" {
                        Text(dogBorrowers[ind3].firstName).font(.largeTitle)
                    } else {
                        Text(dogOwners[ind3].firstName).font(.largeTitle)
                    }
                    Spacer()
                    Button(action: {
//                        if ind3==0 {
//                            currentUser.liked.append(users[ind3].email)
//                        } else {
                        if currentUser.ownerOrBorrower == "Dog Owner" {
                            currentUser.liked.append(dogBorrowers[ind3-1].email)
                        } else {
                            currentUser.liked.append(dogOwners[ind3-1].email)
                        }
                            
                       // }
                        
                        
                        print(currentUser)
                        
                        if currentUser.ownerOrBorrower == "Dog Owner" {
                            if currentUser.liked.contains(dogBorrowers[ind3].email) && dogBorrowers[ind3].liked.contains(currentUser.email) {
                                print (dogBorrowers[ind3].email)
                            }
                        } else {
                            if currentUser.liked.contains(dogOwners[ind3].email) && dogOwners[ind3].liked.contains(currentUser.email) {
                                print (dogOwners[ind3].email)                            }
                        }
                        
                        
                        
                        if currentUser.ownerOrBorrower=="Dog Owner" {
                            if(ind3+1<dogBorrowers.count){
                                ind3=ind3+1
                            }
                        } else {
                            if(ind3+1<dogOwners.count){
                                ind3=ind3+1
                            }
                        }
                        
                        //                        for user in users{
                        //                            if currentUser.ownerOrBorrower=="Dog Owner" && user.ownerOrBorrower=="Dog Borrower" {
                        //                                u3 = user
                        //                            }
                        //
                        //                            if currentUser.ownerOrBorrower=="Dog Borrower" && user.ownerOrBorrower=="Dog Owner" {
                        //                                u3 = user
                        //                            }
                        //                            //   print(u3)
                        //
                        //                        }
                        
                    }){
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
