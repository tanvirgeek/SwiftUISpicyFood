//
//  Dish.swift
//  SpicyFood
//
//  Created by MD Tanvir Alam on 9/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish:Identifiable {
    let id = UUID()
    let name:String
    let imageURL:String
    let isSpicy:Bool
}

extension Dish{
    static func all ()-> [Dish]{
        return[
            Dish(name: "Kung Pow Chicken", imageURL: "kungpow", isSpicy: true),
            Dish(name: "Sweet & Sour Chicken", imageURL: "sweet", isSpicy: false),
            Dish(name: "Spicy & Red Chicken", imageURL: "spicy", isSpicy: true)
        ]
    }
}
