//
//  User.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 08/04/2022.
//

import Foundation
import SwiftUI

struct User {
    var password: String
    var email: String
    var ownerOrBorrower: String
    var firstName: String
    var surName: String
    var image: Image
    var bio: String
    var availability: [dayOfWeek]?
    var liked: [User]?
}

var users = [User(password: "owner1", email: "test@test.com", ownerOrBorrower: "Dog Owner", firstName: "owner1", surName: "test", image: Image("otto"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)]),
             User(password: "a", email: "a", ownerOrBorrower: "Dog Borrower", firstName: "borrower1", surName: "sullivan", image: Image("dizzy"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)]),
             User(password: "borrower2", email: "aaa@test.com", ownerOrBorrower: "Dog Borrower", firstName: "borrower2", surName: "aaa", image: Image("otto"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)]),
             User(password: "owner2", email: "bbb@test.com", ownerOrBorrower: "Dog Owner", firstName: "owner2", surName: "bbb", image: Image("dizzy"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)]),]
