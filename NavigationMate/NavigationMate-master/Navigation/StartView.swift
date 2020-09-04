//
//  StartView.swift
//  Navigation
//
//  Created by Adriaan Giel on 26/06/2020.
//  Copyright © 2020 Toph. All rights reserved.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView{
            
            ZStack{
                Color(red: 11 / 255, green: 35 / 255, blue: 53 / 255)
            VStack{
                Spacer()
                //NAVIGATEMATE
                Text("NavigateMate")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                .foregroundColor(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                
                Spacer()
                NavigationLink(destination: SearchView()){
                    Image("Bitmap").resizable().frame(width: 250, height: 250)
                    .foregroundColor(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                }
                
                    
                
                Spacer()
        
             
            }
            
            }.edgesIgnoringSafeArea(.all).onAppear(){
                playSound(sound: "start", format: "mp3")
            }
    }
    }
    
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
