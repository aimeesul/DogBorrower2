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
}

var users = [User(password: "test", email: "test@test.com", ownerOrBorrower: "Owner", firstName: "test", surName: "test", image: Image("otto"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)]),
             User(password: "a", email: "a", ownerOrBorrower: "Borrower", firstName: "aimee", surName: "sullivan", image: Image("dizzy"), bio:"", availability:[dayOfWeek(name: "Monday", isSelected: true)])]
