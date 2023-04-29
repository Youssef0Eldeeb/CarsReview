//
//  DetailView.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 13/04/2023.
//

import SwiftUI

struct DetailView: View {
    var car: Car
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                
                HeaderView(car: car)
                    
                
                VStack(alignment: .leading, spacing: 15){
                    //title
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(car.gradientColors[0])
                    //headline
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    //model
                    ModelVeiw(car: car)
                    //description
                    Text("Lear more about\(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(car.gradientColors[0])
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    //Links
                    GroupBox{
                        HStack{
                            Link("Source: Youtube", destination: URL(string: "https://www.youtube.com")!)
                            Spacer()
                            Image(systemName: "arrow.up.right.square")
                        }
                        .foregroundColor(car.gradientColors[0])
                    }
                    .padding(.bottom, 40)
                }//: VStack
                .padding(.horizontal, 15)
                .frame(maxWidth: 620)
            }//: VStack
        }//: ScrollView
        .ignoresSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(car: carsData[4])
    }
}

