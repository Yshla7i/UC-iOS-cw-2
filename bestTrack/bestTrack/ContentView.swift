//
//  ContentView.swift
//  bestTrack
//
//  Created by Yousef Almutairy on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emoji = "questionMark"
    
    
    var body: some View {
        VStack(spacing : 20){
            Text("ماهو المسار المفضل لديك؟")
                .padding(.top,50)
           
            
            Image(emoji)
                .resizable()
                .scaledToFit()
                
           
        
                .onTapGesture {
                    emoji = "questionMark"
                }
           
                
            Text("IOS")
                .padding(.horizontal,40)
                
                .background(Color.blue)
                . opacity(0.5)
                .foregroundColor(Color.white)
                .clipShape(Capsule())
                
                .onTapGesture {
                    emoji = "IOS"
                }
            
            Text("GameDev")
                .padding(.horizontal,20)
                .foregroundColor(Color.white)
                .background(Color.red)
                .clipShape(Capsule())
                .onTapGesture {
                    emoji = "gameDev"
                }
            Text("Web")
                .padding(.horizontal,40)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .clipShape(Capsule())
                .onTapGesture {
                    emoji = "WEB"
                }
            Text("Android")
                .padding(.horizontal,30)
                .foregroundColor(Color.white)
                .background(Color.green)
                .clipShape(Capsule())
            
                .onTapGesture {
                    emoji = "Android"
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
