//
//  User.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 08/04/2022.
//

import Foundation
import SwiftUI

struct User: Equatable {
    static func == (lhs: User, rhs: User) -> Bool {
       // print("boo")
        return true
    }
    
    var password: String
    var email: String
    var ownerOrBorrower: String
    var firstName: String
    var surName: String
    var image: Image
    var bio: String
    var availability: [dayOfWeek]?
    var liked: [String]
}

var testUser = User(password: "a", email: "a", ownerOrBorrower: "Dog Borrower", firstName: "borrower1", surName: "sullivan", image: Image("dizzy"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)], liked: [])

var dogOwners = [User(password: "owner1", email: "owner1", ownerOrBorrower: "Dog Owner", firstName: "owner1", surName: "test", image: Image("otto"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)], liked: [testUser.email]),
             User(password: "owner2", email: "owner2", ownerOrBorrower: "Dog Owner", firstName: "owner2", surName: "bbb", image: Image("dizzy"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)], liked: [testUser.email]),User(password: "owner3", email: "owner3", ownerOrBorrower: "Dog Owner", firstName: "owner3", surName: "test", image: Image("otto"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)], liked: [testUser.email]),  User(password: "owner4", email: "owner4", ownerOrBorrower: "Dog Owner", firstName: "owner4", surName: "bbb", image: Image("dizzy"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)], liked: [testUser.email])]

var dogBorrowers = [testUser, User(password: "borrower2", email: "borrower2", ownerOrBorrower: "Dog Borrower", firstName: "borrower2", surName: "aaa", image: Image("otto"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)], liked: []),]
