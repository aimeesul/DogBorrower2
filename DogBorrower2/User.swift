//
//  User.swift
//  DogBorrower
//
//  Created by Aimee Sullivan on 08/04/2022.
//

import Foundation

public struct User {
    let userName: String
    let password: String
    let email: String
    let isOwner: Bool
    let firstName: String
    let surName: String
}

let Users = [
    User(userName: "test", password: "test1", email: "test@test.com", isOwner: true, firstName: "test", surName: "test"),
    User(userName:"aimee", password: "aimee1", email: "aimee@gmail.com", isOwner: false, firstName: "aimee", surName: "sullivan")]
