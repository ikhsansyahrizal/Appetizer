//
//  User.swift
//  Appetizers
//
//  Created by Ikhsan on 07/04/24.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var LastName = ""
    var email = ""
    var birthDay = Date()
    var extraNapkins = false
    var frequentRefils = false
}
