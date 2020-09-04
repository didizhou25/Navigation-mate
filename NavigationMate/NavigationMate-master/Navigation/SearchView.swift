//
//  SearchView.swift
//  Navigation
//
//  Created by Adriaan Giel on 26/06/2020.
//  Copyright © 2020 Toph. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @State var showSheetView = false
    @State var spin = false
    @State var pos = 0
    @State var topTitle: [String] = [
        "Restaurant zoeken",
        "Restaurant gevonden",
        "Restaurant niet gevonden"
    ]
    @State var icons: [String] = [
        "spinner",
        "food",
        "question"
    ]
    
    var body: some View {
            ZStack{
                Color(red: 11 / 255, green: 35 / 255, blue: 53 / 255)
                VStack{
                    Spacer()
                    Text(self.topTitle[self.pos])
                        .font(.largeTitle)
                        .fontWeight(.semibold).foregroundColor(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                    Spacer(minLength: 20)
                    NavigationLink(destination:MarkView()){
                        Image(self.icons[self.pos])
                             .resizable()
                             .frame(width:200,height:200)
                             .rotationEffect(.degrees(spin ? 360: 0))
                             .animation(Animation.linear.repeatCount(3).speed(0.4))
                             .onAppear(){
                                 if(self.pos == 0 ){
                                         self.spin.toggle()
                                 }
                                 
                                 DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                                     self.spin = false
                        
                                      playSound(sound: "gevonden", format: "mp3")
                                     self.pos = 1
                                     
                                     
                                 }
                         }
                        
                    }.foregroundColor(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                    
                    Spacer()
                    
                }
                
            }.edgesIgnoringSafeArea(.all).onAppear(){
                playSound(sound: "zoeken", format: "mp3")
        }
    
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
