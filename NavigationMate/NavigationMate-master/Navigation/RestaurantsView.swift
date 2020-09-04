//
//  RestaurantsView.swift
//  Navigation
//
//  Created by Adriaan Giel on 26/06/2020.
//  Copyright © 2020 Toph. All rights reserved.
//

import SwiftUI

struct RestaurantsView: View {
    private var restaurants =  [
        "test",
        "Welcome",
        "test",
        "test"
    ]
    
    var body: some View {
        ZStack{
            Color(red: 11 / 255, green: 35 / 255, blue: 53 / 255)

            
            
            VStack{
                
                ForEach(0 ..< self.restaurants.count){_ in
                    
                    Button(action: {
                        
                    }) { Text("sdadsdadas").font(.largeTitle).fontWeight(.semibold).foregroundColor(Color(red: 11 / 255, green: 35 / 255, blue: 53 / 255)).padding()
            
        }
        .frame(width: 340.0)
            
        .background(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                
                                     
                }
            }
        }
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsView()
    }
}
