//
//  ContentView.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 12/04/2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(carsData) { item in
                CardView(car: item)
                    .cornerRadius(15)
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(.page)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
