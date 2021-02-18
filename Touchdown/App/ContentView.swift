//
//  ContentView.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: true, content: {
                        FeaturedTabView()
                            .padding(.vertical, 20)
                        CategoryGridView()
                        TitleView(title: "Helmet")
                        LazyVGrid(columns: gridlayout, alignment: .center, spacing: 15, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        withAnimation(.easeOut) {
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                            } //: LOOP
                        }) //: VGRID
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }) //: SCROLL
                    
                    
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
            .environmentObject(Shop())
    }
}
