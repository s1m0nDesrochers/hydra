//
//  InputView.swift
//  Hydra2.0
//
//  Created by Simon Desrochers on 2020-12-02.
//

import UIKit
import SwiftUI

    struct InputView : View{
        
        @EnvironmentObject var viewModel: MainScreenVM
        
        @State var humidityLT1: String = "85"
        @State var humidityUT1: String = "95"
        @State var humidityLT2: String = "85"
        @State var humidityUT2: String = "95"
        @State var humidityLT3: String = "85"
        @State var humidityUT3: String = "95"
        @State var phTreshold: String = "6.5"
        
        var body : some View{
            
            ScrollView{
                
                VStack(alignment:.center, spacing:15){
                    Text("Calvette 1").font(.custom("AppleSDGothicNeo-Light" ,size:30))
                    HStack{
                        Text("Humidité minimum")
                        TextField("LT1", text:$humidityLT1).frame(width: 40, height: 15, alignment: .center)
                    }
                    HStack{
                        Text("Humidité maximum")
                        TextField("Humidité maximum calvette 2", text:$humidityUT1)
                    }
                    Button(action:{createJson()}){
                        Text("Envoyer")
                    }
                }
            }
            
            
            
            
        }
        
        func createJson(){
            
            let json : String = "{humidityLowerTreshold1: \(humidityLT1), humidityUpperTreshold1: \(humidityUT1)}"
            
            viewModel.sendData(json: json)
            
        }
    }

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}



