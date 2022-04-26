//
//  User.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 08/04/2022.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let userName: String
    let password: String
    let email: String
    let ownerOrBorrower: String
    let firstName: String
    let surName: String
}

let users = [
    User(userName: "test", password: "test1", email: "test@test.com", ownerOrBorrower: "Owner", firstName: "test", surName: "test"),
    User(userName:"aimee", password: "aimee1", email: "aimee@gmail.com", ownerOrBorrower: "Borrower", firstName: "aimee", surName: "sullivan")]
