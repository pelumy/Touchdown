//
//  Constant.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")


// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)


// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridlayout: [GridItem] {
   Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
    
// UX

// API

// IMAGE

// FONT

// STRING

//MISC
