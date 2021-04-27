//
//  OnboardingView.swift
//  fruits
//
//  Created by jigar dave on 21/04/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK:- PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK:- BODY
    
    var body: some View {
        TabView {
            ForEach (fruits[0...5]) {
                item in
                //fruitCardView()
                fruitCardView(fruit: item)            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}



//MARK:- PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
