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
        @State private var name: String = "Tim"
        
        var body : some View{
            
            
            
            NavigationView{
                
                ScrollView{
                    
                    VStack{
                        HStack{
                                Image("hydraLogo").resizable().frame(width: 50, height: 50)
                            Text("Configuration").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light" ,size:36))
                            Spacer()
                            NavigationLink(destination: ContentView()){
                                Image(systemName: "gear").resizable().frame(width: 30, height: 30).foregroundColor(.white).font(Font.system(.largeTitle).bold()).padding(.leading, 40)
                                    
                            }
                        }.frame(minWidth:0, maxWidth: .infinity, minHeight: 90, alignment: .center).padding(20).background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.5773694601403662, saturation: 0.9232538981610035, brightness: 0.7144907756024097, opacity: 0.8427025208990259), location: 0.0), Gradient.Stop(color: Color(hue: 0.3590735469955996, saturation: 0.7599689070000707, brightness: 0.7218876574412887, opacity: 0.8408396157873683), location: 1.0)]), startPoint: UnitPoint.leading, endPoint: UnitPoint.trailing))
                        
                        Text("Calvette 1").font(.custom("AppleSDGothicNeo-Light" ,size:30))
                        
                        
                        
                        
                        VStack(alignment: .leading){
                            Text("Humidité minimum").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light", size: 20)).bold()
                            HStack{
                                TextField("LT1", text:$humidityLT1).padding(.all, 10).background(Color.gray).cornerRadius(5).foregroundColor(Color.white)
                            }
                        }.padding(15)
                        
                        VStack(alignment: .leading){
                            Text("Humidité maximum").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light", size: 20)).bold()
                            HStack{
                                TextField("Humidité maximum calvette 2", text:$humidityUT1).padding(.all, 10).background(Color.gray).cornerRadius(5).foregroundColor(Color.white)
                            }
                        }.padding(15)
                        
                        VStack(alignment: .trailing) {
                            HStack {
                                Spacer()
                                Button(action:{createJson()}){
                                    Text("Envoyer").foregroundColor(Color.white).padding(.all, 10)
                                }.background(Color(hue: 0.5773694601403662, saturation: 0.9232538981610035, brightness: 0.7144907756024097, opacity: 0.8427025208990259)).cornerRadius(5)
                            }
                        }.padding(15)
                        
                    }
                }.navigationBarTitle("").navigationBarHidden(true).background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.5773694601403662, saturation: 0.9232538981610035, brightness: 0.7144907756024097, opacity: 0.8427025208990259), location: 0.0), Gradient.Stop(color: Color(hue: 0.3590735469955996, saturation: 0.7599689070000707, brightness: 0.0, opacity: 1.0), location: 1.0)]), center: UnitPoint.topLeading, startRadius: 0.0, endRadius: 174.96719360351562))
                
            }
            
            
            
            
            
            
        }
        
        func setCurrentTresholds(){
            
            humidityLT1 = viewModel.calvettes.humidityLowerTreshold1.description
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




