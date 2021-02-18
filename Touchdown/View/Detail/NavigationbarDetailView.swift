//
//  NavigationbarDetailView.swift
//  Touchdown
//
//  Created by Itunu Raimi on 18/02/2021.
//

import SwiftUI

struct NavigationbarDetailView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
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
            .environmentObject(Shop())
            .padding()
            .background(Color.gray)
    }
}
