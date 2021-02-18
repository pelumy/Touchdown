//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridlayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                } //: LOOP
            }) //:  HGRID
            .frame(height: 200)
            .padding(15)
        }) //: SCROLL
    }
}

// MARK: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
