//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Ikhsan on 28/03/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
