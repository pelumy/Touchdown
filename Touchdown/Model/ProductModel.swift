//
//  ProductModel.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name, image: String
    let price: Int
    let description: String
    let color: [Double]
    var red: Double {
        color[0]
    }
    var green: Double {
        color[1]
    }
    var blue: Double {
        color[2]
    }
    var formatedPrice: String {
        "$\(price)"
    }
}
