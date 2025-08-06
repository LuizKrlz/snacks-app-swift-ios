//
//  CollectionView.swift
//  Snacks App
//
//  Created by Luiz Correa on 06/08/2025.
//

import SwiftUI

struct CollectionView: View {
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Header
                    HStack {
                        Text("Order From The Best OF **Snacks**")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        Button {
                            mode.wrappedValue.dismiss()
                        } label : {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                        }
                        .foregroundStyle(.black)
                    }
                    .padding(30)
                    
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                    ], content: {
                        ForEach(productsList, id:\.id) { item in
                            SmallProductCard(product: item)
                                .environmentObject(cartManager)
                        }
                    })
                    .padding()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    CollectionView()
        .environmentObject(CartManager())
}
