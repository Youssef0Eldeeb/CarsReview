//
//  SettingView.swift
//  CarsReview
//
//  Created by Youssef Eldeeb on 30/04/2023.
//

import SwiftUI

struct SettingView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        NavigationView {
            VStack {
                GroupBox{
                    HStack{
                        Text("Cars".uppercased())
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                    }
                    Divider()
                    HStack{
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                        Text("Cars app includes very important information about cars")
                    }
                }//:GroupBox
                Toggle(isOn: $isOnboarding) {
                    if isOnboarding{
                        Text("Restarted".uppercased())
                            .font(.title)
                            .foregroundColor(.green)
                    }else{
                        Text("Restart".uppercased())
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                    
                }
                .padding()
                .background(.ultraThickMaterial)
                .cornerRadius(8)
                
                Spacer()
            }
            .navigationTitle("Settings")
            .navigationBarItems(trailing: Button(action: {
                presentaionMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
        }//: NavigationView
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
