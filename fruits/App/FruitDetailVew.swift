//
//  FruitDetailVew.swift
//  fruits
//
//  Created by jigar dave on 26/04/21.
//

import SwiftUI

struct FruitDetailVew: View {
    //MARK:- PROPERTIES
    
    
    var fruit:Fruit
    
    //MARK:- BODY
    var body: some View
    {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20)
                {
                    //header
                    FruitHeaderView (fruit: fruit)
                    VStack(alignment: .leading, spacing: 20)
                    {
                        //title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        
                        //nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        //subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom,40)
                        
                    }
                    .padding(.horizontal, 20)
                    
                    .frame(maxWidth:640, alignment: .center)
                    
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            
            }
            .edgesIgnoringSafeArea(.top)
            
        }
            .navigationViewStyle(StackNavigationViewStyle())

            
            
            
        }
    }
    
    
    
    //MARK:- PREVIEW
    struct FruitDetailVew_Previews: PreviewProvider {
        static var previews: some View {
            FruitDetailVew(fruit: fruitsData[0])
        }
    }

