//
//  Shop.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: Product? = nil
}
