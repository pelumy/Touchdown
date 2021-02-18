//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZSTACK
            .background(
                Color(red: product.red, green: product.green, blue: product.green)
                    .cornerRadius(12)
            )
            
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // Price
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }) //: VSTACK
    }
}

// MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
    }
}
