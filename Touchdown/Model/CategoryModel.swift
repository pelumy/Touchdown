//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import Foundation
struct Category: Codable, Identifiable {
    let id: Int
    let name, image: String
}
