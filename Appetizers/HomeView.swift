//
//  HomeView.swift
//  Appetizers
//
//  Created by Ikhsan on 28/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizer 🍎")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
