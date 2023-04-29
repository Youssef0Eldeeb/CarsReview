//
//  ListView.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 13/04/2023.
//

import SwiftUI

struct ListView: View {
    @State var isSettingVeiwPresented: Bool = false
    var body: some View {
        NavigationView{
            List(carsData) { car in
                NavigationLink(destination: DetailView(car: car)) {
                    CellView(car: car)
                        .padding(.vertical, 3)
                        .listRowSeparator(.hidden)
                }
                
            }//: List
            .navigationTitle("Car")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                isSettingVeiwPresented = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isSettingVeiwPresented) {
                SettingView()
            }
        }//: Naviagation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .preferredColorScheme(.light)
    }
}
