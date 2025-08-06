//
//  SmallProductCard.swift
//  Snacks App
//
//  Created by Luiz Correa on 06/08/2025.
//

import SwiftUI

struct SmallProductCard: View {
    var product: Product

    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        ZStack {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.trailing, -140)
                .rotationEffect(Angle(degrees: 35))

            ZStack {
                VStack(
                    alignment: .leading,
                    content: {
                        Text("\(product.name)")
                            .font(.system(size: 18, weight: .semibold))
                            .frame(width: 70)

                        Text(product.category)
                            .font(.system(size: 10))
                            .padding()
                            .background(.white.opacity(0.5))
                            .clipShape(Capsule())

                        Spacer()

                        HStack {
                            Text("$\(product.price).0")
                                .font(.system(size: 24, weight: .semibold))

                            Spacer()

                            Button {
                                cartManager.addToCart(product: product)
                            } label: {
                                Image(systemName: "basket")
                                    .imageScale(.large)
                                    .frame(width: 45, height: 40)
                                    .background(.black)
                                    .clipShape(Capsule())
                                    .foregroundStyle(.white)
                            }
                        }
                        .padding(.trailing, -12)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .background(.white.opacity(0.9))
                        .clipShape(Capsule())
                    }
                )
            }
            .padding(20)
            .frame(width: 170, height: 215)
        }
        .frame(width: 170, height: 215)
        .background(product.color.opacity(0.13))
        .clipShape(.rect(cornerRadius: 30))
        .padding(.leading, 10)
    }
}

#Preview {
    SmallProductCard(
        product: Product(
            name: "Good Source",
            category: "Choco",
            image: "gs1",
            color: .pink,
            price: 8
        )
    )
    .environmentObject(CartManager())
}
