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
        @State private var name: String = "Tim"
        
        var body : some View{
            
            ScrollView{
                    
                    VStack{
                        HStack{
                                Image("hydraLogo").resizable().frame(width: 50, height: 50)
                            Text("Configuration").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light" ,size:36))
                            Spacer()
                            Button(action:{self.showSelf = false}){
                                Image(systemName: "return").resizable().frame(width: 30, height: 30).foregroundColor(.white).font(Font.system(.largeTitle).bold()).padding(.leading, 40)
                            }
                        }.frame(minWidth:0, maxWidth: .infinity, minHeight: 90, alignment: .center).padding(20).background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.5773694601403662, saturation: 0.9232538981610035, brightness: 0.7144907756024097, opacity: 0.8427025208990259), location: 0.0), Gradient.Stop(color: Color(hue: 0.3590735469955996, saturation: 0.7599689070000707, brightness: 0.7218876574412887, opacity: 0.8408396157873683), location: 1.0)]), startPoint: UnitPoint.leading, endPoint: UnitPoint.trailing))
                        
                        
                        
                        
                        
                        VStack(alignment: .leading) {
                            VStack(alignment:.leading) {
                                Text("Calvette 1").font(.custom("AppleSDGothicNeo-Light" ,size:30)).foregroundColor(Color.white)
                            }.padding(.top, 5)
                            VStack {
                                VStack(alignment: .leading){
                                    Text("Humidité minimum").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light", size: 20)).bold()
                                    HStack{
                                        TextField("LT1", text:$humidityLT1).padding(.all, 10).background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 1.0, brightness: 0.09040067282067725, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.030484302934393828, brightness: 0.0, opacity: 1.0), location: 1.0)]), center: UnitPoint.center, startRadius: 0.0, endRadius: 297.56368001302087)).cornerRadius(5).foregroundColor(Color.white)
                                    }
                                }.padding(.all, 15)
                                VStack(alignment: .leading){
                                    Text("Humidité maximum").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light", size: 20)).bold()
                                    HStack{
                                        TextField("Humidité maximum calvette 2", text:$humidityUT1).padding(.all, 10).background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 1.0, brightness: 0.09040067282067725, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.030484302934393828, brightness: 0.0, opacity: 1.0), location: 1.0)]), center: UnitPoint.center, startRadius: 0.0, endRadius: 297.56368001302087)).cornerRadius(5).foregroundColor(Color.white)
                                    }
                                }.padding(.all, 15)
                            }.background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 0.365004206278238, brightness: 0.17169991458754943, opacity: 0.9369329659335586), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.06717392335455102, brightness: 0.04240022222679782, opacity: 0.4345752532223621), location: 1.0)]), center: UnitPoint.center, startRadius: 152.77913411458331, endRadius: 413.0167643229167)).cornerRadius(10)
                        }.padding(.all, 15)
                        
                        
                        
                        
                        
                        VStack(alignment: .leading) {
                            VStack(alignment:.leading) {
                                Text("Calvette 2").font(.custom("AppleSDGothicNeo-Light" ,size:30)).foregroundColor(Color.white)
                            }.padding(.top, 5)
                            VStack {
                                VStack(alignment: .leading){
                                    Text("Humidité minimum").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light", size: 20)).bold()
                                    HStack{
                                        TextField("LT1", text:$humidityLT1).padding(.all, 10).background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 1.0, brightness: 0.09040067282067725, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.030484302934393828, brightness: 0.0, opacity: 1.0), location: 1.0)]), center: UnitPoint.center, startRadius: 0.0, endRadius: 297.56368001302087)).cornerRadius(5).foregroundColor(Color.white)
                                    }
                                }.padding(.all, 15)
                                VStack(alignment: .leading){
                                    Text("Humidité maximum").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light", size: 20)).bold()
                                    HStack{
                                        TextField("Humidité maximum calvette 2", text:$humidityUT1).padding(.all, 10).background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 1.0, brightness: 0.09040067282067725, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.030484302934393828, brightness: 0.0, opacity: 1.0), location: 1.0)]), center: UnitPoint.center, startRadius: 0.0, endRadius: 297.56368001302087)).cornerRadius(5).foregroundColor(Color.white)
                                    }
                                }.padding(.all, 15)
                            }.background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 0.365004206278238, brightness: 0.17169991458754943, opacity: 0.9369329659335586), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.06717392335455102, brightness: 0.04240022222679782, opacity: 0.4345752532223621), location: 1.0)]), center: UnitPoint.center, startRadius: 152.77913411458331, endRadius: 413.0167643229167)).cornerRadius(10)
                        }.padding(.all, 15).padding(.bottom, 0)
                        
                        
                        
                        
                        VStack(alignment: .leading) {
                            VStack(alignment:.leading) {
                                Text("Calvette 3").font(.custom("AppleSDGothicNeo-Light" ,size:30)).foregroundColor(Color.white)
                            }.padding(.top, 5)
                            VStack {
                                VStack(alignment: .leading){
                                    Text("Humidité minimum").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light", size: 20)).bold()
                                    HStack{
                                        TextField("LT1", text:$humidityLT1).padding(.all, 10).background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 1.0, brightness: 0.09040067282067725, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.030484302934393828, brightness: 0.0, opacity: 1.0), location: 1.0)]), center: UnitPoint.center, startRadius: 0.0, endRadius: 297.56368001302087)).cornerRadius(5).foregroundColor(Color.white)
                                    }
                                }.padding(.all, 15)
                                VStack(alignment: .leading){
                                    Text("Humidité maximum").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light", size: 20)).bold()
                                    HStack{
                                        TextField("Humidité maximum calvette 2", text:$humidityUT1).padding(.all, 10).background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 1.0, brightness: 0.09040067282067725, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.030484302934393828, brightness: 0.0, opacity: 1.0), location: 1.0)]), center: UnitPoint.center, startRadius: 0.0, endRadius: 297.56368001302087)).cornerRadius(5).foregroundColor(Color.white)
                                    }
                                }.padding(.all, 15)
                            }.background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6495239073971668, saturation: 0.365004206278238, brightness: 0.17169991458754943, opacity: 0.9369329659335586), location: 0.0), Gradient.Stop(color: Color(hue: 0.6637860033885543, saturation: 0.06717392335455102, brightness: 0.04240022222679782, opacity: 0.4345752532223621), location: 1.0)]), center: UnitPoint.center, startRadius: 152.77913411458331, endRadius: 413.0167643229167)).cornerRadius(10)
                        }.padding(.all, 15)
                        
                        
                        
                        VStack(alignment: .trailing) {
                            HStack {
                                Spacer()
                                Button(action:{createSendParameters()}){
                                    Text("Envoyer").foregroundColor(Color.white).padding(.all, 10)
                                }.background(Color(hue: 0.5773694601403662, saturation: 0.9232538981610035, brightness: 0.7144907756024097, opacity: 0.8427025208990259)).cornerRadius(10)
                            }
                        }.padding(15)
                        
                    }.onAppear(perform:{setCurrentTresholds()})
                }.navigationBarTitle("").navigationBarHidden(true).background(RadialGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.5773694601403662, saturation: 0.9232538981610035, brightness: 0.7144907756024097, opacity: 0.8427025208990259), location: 0.0), Gradient.Stop(color: Color(hue: 0.3590735469955996, saturation: 0.7599689070000707, brightness: 0.0, opacity: 1.0), location: 1.0)]), center: UnitPoint.topLeading, startRadius: 0.0, endRadius: 174.96719360351562))
                
            
            
            
            
            
            
            
        }
        
        func setCurrentTresholds(){
            
            humidityLT1 = viewModel.calvettes.humidityLowerTreshold1.description
            
            humidityUT1 = viewModel.calvettes.humidityUpperTreshold1.description
            
            humidityLT2 = viewModel.calvettes.humidityLowerTreshold2.description
            
            humidityUT2 = viewModel.calvettes.humidityUpperTreshold2.description
            
            humidityLT3 = viewModel.calvettes.humidityLowerTreshold3.description
            
            humidityUT3 = viewModel.calvettes.humidityUpperTreshold3.description
            
            phTreshold = viewModel.waterTank.phTreshold.description
        }
        
        func createSendParameters(){
            
            
            var parameters: [String: Any] = [
                
                "humidityLowerTreshold1" : Float(humidityLT1)!,
                
                "humidityUpperTreshold1": Float(humidityUT1)!,
                
                "humidityLowerTreshold2": Float(humidityLT2)!,
                
                "humidityUpperTreshold2": Float(humidityUT2)!,
                
                "humidityLowerTreshold3": Float(humidityLT3)!,
                
                "humidityUpperTreshold3": Float(humidityUT3)!,
                
                "phTreshold": Float(phTreshold)!
                
            
            ]
            
            viewModel.sendData(data: parameters)
            
        }
    }

/*struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}*/




