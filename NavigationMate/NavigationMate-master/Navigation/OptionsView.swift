
import SwiftUI

struct OptionsView: View {
    //11 G: 35 B: 53
    //216    216    216
    fileprivate func optionButton(title: String) -> some View {
        return NavigationLink(destination:RouteView()) { Text(title).font(.largeTitle).fontWeight(.semibold).foregroundColor(Color(red: 11 / 255, green: 35 / 255, blue: 53 / 255)).padding()
            
        }
        .frame(width: 340.0,height: 100)
            
        .background(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255)).onTapGesture(count: 2) {
            if(title == "Ingang/Uitgang"){
                playSound(sound: "ingang", format: "mp3")
            }else{
                playSound(sound: title.lowercased(), format: "mp3")

            }
        }
    }
    
    fileprivate func handleButtonPress(){
        print("Pressed")
    }
    
    var body: some View {
        
        ZStack{
            
            Color(red: 11 / 255, green: 35 / 255, blue: 53 / 255)
            VStack{
                
                Text("Waar wilt u heen?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 216 / 255, green: 216 / 255, blue: 216 / 255))
                
                VStack{
                
                        Divider()
                        optionButton(title: "Ingang/Uitgang")
                        Divider()
                        optionButton(title: "Kassa")
                        Divider()
                        optionButton(title: "WC")
                        Divider()
                        optionButton(title: "Bar")
                        Divider()
                        optionButton(title: "Nooduitgang")
                
                        
                    }
                
                
            }
            
        }.edgesIgnoringSafeArea(.all).onTapGesture(count: 2) {
            playSound(sound: "list", format: "mp3")

        }.onAppear(){
            playSound(sound: "war", format: "mp3")
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    playSound(sound: "kliktwee", format: "mp3")
            }
        }
        
  
    }
    
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
