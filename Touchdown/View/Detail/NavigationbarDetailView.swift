//
//  NavigationbarDetailView.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import SwiftUI

struct NavigationbarDetailView: View {

    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: BUTTON
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: BUTTON
            
        } //: HSTACK
    }
}

struct NavigationbarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationbarDetailView()
            .padding()
            .background(Color.gray)
    }
}
