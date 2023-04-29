//
//  Car.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 12/04/2023.
//

import SwiftUI

struct Car: Identifiable{
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let models: [String]
}

