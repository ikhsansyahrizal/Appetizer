//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Ikhsan on 06/04/24.
//

import Foundation

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var LastName = ""
    @Published var email = ""
    @Published var birthDay = Date()
    @Published var extraNapkins = false
    @Published var frequentRefils = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        
        guard !firstName.isEmpty && !LastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("changes success")
    }
    
    
}
