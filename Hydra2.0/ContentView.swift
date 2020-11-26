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
                    Image("hydraLogo").resizable().frame(width: 50, height: 50)
                Text("Hydra").font(.system(size: 36)).foregroundColor(Color.white).padding(.leading,15)
                Spacer()
                Button(action:{
                    
                }){
                    Image(systemName: "gear").resizable().frame(width: 50, height: 50).foregroundColor(.white).font(Font.system(.largeTitle).bold())
                }
            }.frame(minWidth:0, maxWidth: .infinity, minHeight: 70, alignment: .center).padding(10).background(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing))
        }.frame(minWidth:0,maxWidth: .infinity ,minHeight:0, maxHeight: .infinity, alignment: .topLeading)
    }
    
    
        
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
