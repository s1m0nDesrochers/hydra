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
        
        ScrollView{
            
            VStack{
                HStack{
                        Image("hydraLogo").resizable().frame(width: 50, height: 50)
                    Text("Hydra").font(.largeTitle).foregroundColor(Color.white).padding(.leading,15)
                    Spacer()
                    Button(action:{
                        print("allo")
                    }){
                        Image(systemName: "gear").resizable().frame(width: 50, height: 50).foregroundColor(.white).font(Font.system(.largeTitle).bold())
                    }
                }.frame(minWidth:0, maxWidth: .infinity, minHeight: 70, alignment: .center).padding(10).background(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing))
                VStack(alignment:.center , spacing:15 ){
                    Image("serre").resizable().frame(width: 100, height: 100).cornerRadius(20).padding(15)
                    HStack{
                        Text("\(String(format:"%.1f",viewModel.ambient.temp)) °C").font(.system(size: 24))
                        Spacer()
                        Text("\(String(format:"%.1f",viewModel.ambient.humidity))%").font(.system(size: 24))
                    }.frame(width:UIScreen.main.bounds.width - 40).padding(10).background(Color.white).opacity(0.6).cornerRadius(10)
                    Text("Calvettes").font(.custom("Optima-Bold",size:36))
                    HStack(spacing:10){
                        VStack(spacing:10){
                            Text("4 plantes")
                            Text("\(String(format:"%.1f",viewModel.calvettes.temperature1)) °C")
                            Text("\(String(format:"%.1f",viewModel.calvettes.humidity1))%")
                        }.frame(width: 100,height:150,  alignment:.center).background(Color.white).opacity(0.6).cornerRadius(15)
                        VStack(spacing:10){
                            Text("2 plantes")
                            Text("\(String(format:"%.1f",viewModel.calvettes.temperature2)) °C")
                            Text("\(String(format:"%.1f",viewModel.calvettes.humidity2))%")
                        }.frame(width: 100,height:150, alignment:.center).background(Color.white).opacity(0.6).cornerRadius(15)
                        VStack(spacing:10){
                            Text("3 plantes")
                            Text("\(String(format:"%.1f", viewModel.calvettes.temperature3)) °C")
                            Text("\(String(format:"%.1f",viewModel.calvettes.humidity3))%")
                        }.frame(width: 100,height:150, alignment: .center).background(Color.white).opacity(0.6).cornerRadius(15)
                    }.padding(20)
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
