//
//  HeaderView.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 29/04/2023.
//

import SwiftUI

struct HeaderView: View {
    @State var isAnimating: Bool = false
    var car: Car
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.6)
                .animation(.linear(duration: 0.3), value: isAnimating)
        }//: ZStack
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 440, idealHeight: 440, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear {
            isAnimating = true
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(car: carsData[0])
    }
}
