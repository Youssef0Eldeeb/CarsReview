//
//  CellView.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 13/04/2023.
//

import SwiftUI

struct CellView: View {
    var car: Car
    
    var body: some View {
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: Color.black.opacity(0.3), radius: 2, x: 2, y: 2)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5 ){
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                Text(car.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
            }
        }
        
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(car: carsData[0])
            .previewLayout(.sizeThatFits)
    }
}
