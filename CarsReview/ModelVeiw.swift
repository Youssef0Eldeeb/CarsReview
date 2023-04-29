//
//  ModelVeiw.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 29/04/2023.
//

import SwiftUI

struct ModelVeiw: View {
    var car: Car
    var body: some View {
        GroupBox{
            DisclosureGroup{
                ForEach(0 ..< 7) { item in
                    Divider()
                    HStack{
                        Image(systemName: "car")
                        Text("Model \(item + 1):")
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(car.models[item])")
                    }
                    .padding(.vertical, 2)
                }
            }label: {
                Text("Car Model")
            }
            .accentColor(car.gradientColors[0])
            .foregroundColor(car.gradientColors[0])
        }//: GroupBox
    }
}

struct ModelVeiw_Previews: PreviewProvider {
    static var previews: some View {
        ModelVeiw(car: carsData[4])
            .preferredColorScheme(.light)
    }
}
