//
//  ContentView.swift
//  Hydra2.0
//
//  Created by Simon Desrochers on 2020-11-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                    Image("hydraLogo").resizable().frame(width: 100, height: 100)
                Text("Hydra").font(.system(size: 36)).padding(.leading,15)
                    Spacer()
                Button(action:{
                    print("Button pressed")
                }){
                    Image("settingIcon").resizable().frame(width: 50, height: 50)
                }
            }.frame(minWidth:0, maxWidth: .infinity, minHeight: 100, alignment: .topLeading).padding(10).background(Color.gray)
        }.frame(minWidth:0,maxWidth: .infinity ,minHeight:0, maxHeight: .infinity, alignment: .topLeading).background(Color.blue)
        
    }
        
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
