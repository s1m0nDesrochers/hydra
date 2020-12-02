//
//  Calvette.swift
//  Hydra2.0
//
//  Created by Simon Desrochers on 2020-11-27.
//

import UIKit

class Calvette: ObservableObject {

    @Published var temperature1: Float
    
    @Published var humidity1: Float
    
    @Published var humidityLowerTreshold1: Float
    
    @Published var humidityUpperTreshold1: Float
    
    @Published var temperature2: Float
    
    @Published var humidity2: Float
    
    @Published var humidityLowerTreshold2: Float
    
    @Published var humidityUpperTreshold2: Float
    
    @Published var temperature3: Float
    
    @Published var humidity3: Float
    
    @Published var humidityLowerTreshold3: Float
    
    @Published var humidityUpperTreshold3: Float
    
    init() {
        
        temperature1 = 25.0
        
        humidity1 = 85.0
        
        humidityLowerTreshold1 = 85.0
        
        humidityUpperTreshold1 = 95.0
        
        temperature2 = 25.0
        
        humidity2 = 85.0
        
        humidityLowerTreshold2 = 85.0
        
        humidityUpperTreshold2 = 95.0
        
        temperature3 = 25.0
        
        humidity3 = 85.0
        
        humidityLowerTreshold3 = 85.0
        
        humidityUpperTreshold3 = 95.0
        
        
        
    }

}
