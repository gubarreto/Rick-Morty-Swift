//
//  HomeView.swift
//  Rick&Morty
//
//  Created by Gustavo on 09/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                Text("Home")
                    .foregroundStyle(.white)
            }
            
            
        }
    }
}

#Preview {
    HomeView()
}
