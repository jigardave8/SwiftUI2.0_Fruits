//
//  FruitModel.swift
//  fruits
//
//  Created by jigar dave on 26/04/21.
//

import SwiftUI

// MARK:- FRUITS DATA MODEL

struct Fruit : Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors:[Color]
    var description: String
    var nutrition: [String]
}
