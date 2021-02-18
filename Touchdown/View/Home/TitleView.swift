//
//  TitleView.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    var title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.top, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helment")
    }
}
