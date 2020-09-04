//
//  MarkView.swift
//  Navigation
//
//  Created by Adriaan Giel on 26/06/2020.
//  Copyright © 2020 Toph. All rights reserved.
//

import SwiftUI

struct MarkView: View {
    @State private var marked = false
    @State private var topTitle = [
        "false":"Markeer uw tafel",
        "true": "Tafel is gemarkeerd"]
    
    var body: some View {
            ZStack{
                
                Color(red: 11 / 255, green: 35 / 255, blue: 53 / 255)
                VStack{
                    Spacer()
                    Text(String(self.topTitle[self.marked.description] ?? "test"))
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                    
                    NavigationLink(destination:OptionsView()){
                        Rectangle().fill(Color(red: 11 / 255, green: 35 / 255, blue: 53 / 255)).frame(width:400, height:200)
                        
                    }
                        
            
                         Button(action: {
                                            self.marked.toggle()
                            if(self.marked){
                                playSound(sound: "gemarkeerd", format: "mp3")
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.25) {
                                        playSound(sound: "klik", format: "mp3")
                                }
                            }
                                            
                                        }, label: {
                                            if self.marked {
                                                Image("markedb").renderingMode(.original).resizable().frame(width: 200, height: 250)
                                            }else{
                                              Image("markb").renderingMode(.original).resizable().frame(width: 200, height: 250)
                                            }
                                        })
                                      Spacer()
                                  }
                
            }.navigationBarBackButtonHidden(true).edgesIgnoringSafeArea(.all).onAppear(){
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    if(!self.marked){
                        playSound(sound: "click_markeren", format: "mp3")
                    }
                        
                }
        }
            
           

    }
    
}

struct MarkView_Previews: PreviewProvider {
    static var previews: some View {
        MarkView()
    }
}
