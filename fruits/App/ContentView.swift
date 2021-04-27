//
//  ContentView.swift
//  fruits
//
//  Created by jigar dave on 21/04/21.
//

import SwiftUI

struct ContentView: View {
    //MARK:- PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    
    
    //MARK:- BODY
    var body: some View {
        NavigationView{
            List{
                ForEach (fruits.shuffled())
                {item in
                    NavigationLink(destination: FruitDetailVew(fruit: item))
                    {
                        FruitRowView (fruit: item)
                            .padding(.vertical, 4)
                    }
                }
                
            }
                .navigationTitle("Fruits")
                .navigationBarItems(trailing: Button(action:
                { isShowingSettings = true }) {
                    Image(systemName:"slider.horizontal.3")
                }//:button
                .sheet(isPresented: $isShowingSettings)  {
                    SettingsView()
                    
                }
                )
                
            }//:navigation
        .navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
    
    
    //MARK:- PREVIEW
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(fruits: fruitsData)
        }
    }
