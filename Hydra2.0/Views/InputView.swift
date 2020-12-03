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
        
        @Binding var showSelf: Bool
        
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
                        HStack{
                                Image("hydraLogo").resizable().frame(width: 50, height: 50)
                            Text("Hydra").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light" ,size:36))
                            Spacer()
                            Button(action:{self.showSelf = false}){
                                Image(systemName: "gear").resizable().frame(width: 30, height: 30).foregroundColor(.white).font(Font.system(.largeTitle).bold()).padding(.leading, 40)
                                        
                            }
                            
                            
                        }.frame(minWidth:0, maxWidth: .infinity, minHeight: 90, alignment: .center).padding(20).background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.5773694601403662, saturation: 0.9232538981610035, brightness: 0.7144907756024097, opacity: 0.8427025208990259), location: 0.0), Gradient.Stop(color: Color(hue: 0.3590735469955996, saturation: 0.7599689070000707, brightness: 0.7218876574412887, opacity: 0.8408396157873683), location: 1.0)]), startPoint: UnitPoint.leading, endPoint: UnitPoint.trailing))
                        Text("Calvette 1").font(.custom("AppleSDGothicNeo-Light" ,size:30))
                        HStack{
                            Text("Humidité minimum")
                            TextField("LT1", text:$humidityLT1).frame(width: 40, height: 15, alignment: .center)
                        }
                        HStack{
                            Text("Humidité maximum")
                            TextField("Humidité maximum calvette 2", text:$humidityUT1).frame(width: 40, height: 15, alignment: .center)
                        }
                        Button(action:{createJson()}){
                            Text("Envoyer")
                        }
                    }.navigationBarTitle("").navigationBarHidden(true)
                }
                
            
            
            
            
            
            
            
        }
        
        func setCurrentTresholds(){
            
            humidityLT1 = viewModel.calvettes.humidityLowerTreshold1.description
            
            humidityUT1 = viewModel.calvettes.humidityUpperTreshold1.description
        }
        
        func createSendParameters(){
            
            var parameters: [Float] = []
            
            parameters.append(Float(humidityLT1)!)
            
            parameters.append(Float(humidityUT1)!)
            
            viewModel.sendData(data: parameters)
            
        }
    }

/*struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}*/



