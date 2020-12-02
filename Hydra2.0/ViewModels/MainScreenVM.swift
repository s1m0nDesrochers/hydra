//
//  MainScreenVM.swift
//  Hydra2.0
//
//  Created by Simon Desrochers on 2020-11-28.
//

import UIKit
import SwiftUI
import Combine

class MainScreenVM: ObservableObject {

    @Published var ambient: Ambient = Ambient()
        
    @Published var calvettes: Calvette = Calvette()
    
    @Published var waterTank: WaterTank = WaterTank()
    
    @Published var timer = Timer()
    
    init() {
    
        timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
        timer.fire()
    }
    
    
    @objc func update(){
        
        callOpenWeatherApi()
        
        callHydraApi()
        
    }
    
    func callOpenWeatherApi(){
        
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Saint-Ours&units=metric&appid=0423f1d8ad5cbacd8a4f2a0776e44a71")!

        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            //let dataString = String(data: data, encoding: .utf8)
            self.handleOpenWeatherRequest(data: data)
        }

        task.resume()

        
    }
    
    func callHydraApi(){
        
        
    }
    
    func handleOpenWeatherRequest(data: Data){
        
        do{
            
            let decoded = try JSONDecoder().decode(Ambient.self, from: data)
            
            DispatchQueue.main.async{
                
                self.ambient = decoded
                
            }
            
        }catch{
            
            print(error)
            
        }
            
    }

}
