//
//  ContentView.swift
//  Hydra2.0
//
//  Created by Simon Desrochers on 2020-11-26.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var ambient: Ambient
    
    @EnvironmentObject var calvettes: Calvette
    
    @EnvironmentObject var waterTank : WaterTank
    
    @EnvironmentObject var viewModel: MainScreenVM
    
    var body: some View {
        
        NavigationView{
        
        ScrollView{
            
            VStack{
                HStack{
                        Image("hydraLogo").resizable().frame(width: 50, height: 50)
                    Text("Hydra").foregroundColor(Color.white).font(.custom("AppleSDGothicNeo-Light" ,size:36))
                    Spacer()
                    NavigationLink(destination: InputView()){
                        Image(systemName: "gear").resizable().frame(width: 30, height: 30).foregroundColor(.white).font(Font.system(.largeTitle).bold()).padding(.leading, 40)
                            
                    }
                    
            }.frame(minWidth:0, maxWidth: .infinity, minHeight: 70, alignment: .center).padding(10).background(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing))
                
                VStack(alignment:.leading , spacing:15 ){
                    
                    VStack(alignment:.leading) {
                        Text("Serre").font(.custom("AppleSDGothicNeo-Light" ,size:30))
                    }
                    
                    HStack{
                        Text("\(String(format:"%.1f",viewModel.ambient.temp)) °C").font(.custom("AppleSDGothicNeo-Light", size: 20))
                        Spacer()
                        Text("\(String(format:"%.1f",viewModel.ambient.humidity))%").font(.custom("AppleSDGothicNeo-Light", size: 20))
                    }.frame(width:UIScreen.main.bounds.width - 40).padding(10).background(Color.white).opacity(0.6).cornerRadius(5)
                    
                    VStack(alignment:.leading) {
                        Text("Calvettes").font(.custom("AppleSDGothicNeo-Light" ,size:30))
                    }
                    
                    HStack(){
                        VStack(spacing:10){
                            Text("4 plantes").font(.custom("AppleSDGothicNeo-Light", size: 20))
                            Text("\(String(format:"%.1f",viewModel.calvettes.temperature1)) °C").font(.custom("AppleSDGothicNeo-Light", size: 20))
                            Text("\(String(format:"%.1f",viewModel.calvettes.humidity1))%").font(.custom("AppleSDGothicNeo-Light", size: 20))
                        }.frame(width: 100,height:150,  alignment:.center).background(Color.white).opacity(0.6).cornerRadius(5)
                        Spacer()
                        VStack(spacing:10){
                            Text("2 plantes").font(.custom("AppleSDGothicNeo-Light", size: 20))
                            Text("\(String(format:"%.1f",viewModel.calvettes.temperature1)) °C").font(.custom("AppleSDGothicNeo-Light", size: 20))
                            Text("\(String(format:"%.1f",viewModel.calvettes.humidity2))%").font(.custom("AppleSDGothicNeo-Light", size: 20))
                        }.frame(width: 100,height:150, alignment:.center).background(Color.white).opacity(0.6).cornerRadius(5)
                        Spacer()
                        VStack(spacing:10){
                            Text("3 plantes").font(.custom("AppleSDGothicNeo-Light", size: 20))
                            Text("\(String(format:"%.1f", viewModel.calvettes.temperature3)) °C").font(.custom("AppleSDGothicNeo-Light", size: 20))
                            Text("\(String(format:"%.1f",viewModel.calvettes.humidity3))%").font(.custom("AppleSDGothicNeo-Light", size: 20))
                        }.frame(width: 100,height:150, alignment: .center).background(Color.white).opacity(0.6).cornerRadius(5)
                    
                    }
                    
                    HStack{
                        Image("waterTank").resizable().frame(width: 100, height: 100)
                        ZStack(alignment:.bottom){
                            Rectangle().frame(width: 10, height: 100).foregroundColor(Color.gray)
                            Rectangle().frame(width: 10, height: CGFloat(viewModel.waterTank.progress)).foregroundColor(Color.blue)
                        }
                        Text("Ph: \(String(format:"%.1f",viewModel.waterTank.ph))").font(.custom("Optima-Bold",size: 24)).padding(50)
                    }.frame(alignment:.bottom)
                    
                    
                }.frame(alignment:.center).padding(10)
            }.frame(minWidth:0,maxWidth: .infinity ,minHeight:UIScreen.main.bounds.height, maxHeight: .infinity, alignment: .topLeading).background(LinearGradient(gradient:Gradient(colors: [.white, .blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            
        }
        
        }
        
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

