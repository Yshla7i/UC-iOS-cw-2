//
//  ContentView.swift
//  cw2daytwo
//
//  Created by Yousef Almutairy on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var money = "الع"
    var body: some View {
        VStack{
        Text("محول العملات العجيب!")
            .padding()
            TextField("العملة بالدينار", text: $money)
                .padding()
            var convertToAmr = Double(money)
            var convertToPrt = Double(money)
            var convertToEpr = Double(money)
            
            
            
            var amr = convertToAmr! * 3.28
            var prt = convertToPrt! * 2.46
            var epr = convertToPrt! * 2.70
            HStack{
                Text("\(amr)")
                Image("AMR")
                    .resizable()
                    .scaledToFit()
                }
            HStack{
                Text("\(prt)")
                Image("PRT")
                    .resizable()
                    .scaledToFit()
                }
            HStack{
                Text("\(epr)")
                Image("EPR")
                    .resizable()
                    .scaledToFit()
                }
    }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
