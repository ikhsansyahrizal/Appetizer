//
//  OrderView.swift
//  Appetizers
//
//  Created by Ikhsan on 28/03/24.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orederItem
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack{
                    List {
                        ForEach(orderItems) { appetizer in
                             AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no item in your order, \n Please add an appetizer")
                }
                
            }
            .navigationTitle("Orders 🛒")

        }
    }
    
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

