//
//  ContentView.swift
//  SpicyFood
//
//  Created by MD Tanvir Alam on 8/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var model = Dish.all()
    @State var isSpicy = false
    var body: some View {
        
        List{
            Toggle(isOn: $isSpicy) {
                Text("Spicy")
                    .font(.title)
            }
            ForEach(model.filter{$0.isSpicy == self.isSpicy}){ dish in
                HStack {
                    Image(dish.imageURL)
                        .resizable()
                        .frame(width:100,height: 100)
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    Spacer()
                    
                    if(dish.isSpicy == true){
                        Image("spicy-icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
