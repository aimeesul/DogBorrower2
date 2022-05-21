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
        return true
    }
    
    let password: String
    let email: String
    let ownerOrBorrower: String
    let firstName: String
    let surName: String
    var image: Image
    var bio: String
    var availability: [dayOfWeek]?
}

var users = [
    User(password: "test1", email: "test@test.com", ownerOrBorrower: "Owner", firstName: "test", surName: "test", image: Image("logo"), bio:"", availability:[dayOfWeek(name: "Monday")] ),
    User(password: "aimee1", email: "aimee@gmail.com", ownerOrBorrower: "Borrower", firstName: "aimee", surName: "sullivan", image: Image("logo"), bio:"", availability:[dayOfWeek(name: "Monday")])]
