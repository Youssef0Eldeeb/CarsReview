//
//  CarsReviewApp.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 12/04/2023.
//

import SwiftUI

@main
struct CarsReviewApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ListView()
            }
        }
    }
}
