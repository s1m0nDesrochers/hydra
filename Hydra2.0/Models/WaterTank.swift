//
//  WaterTank.swift
//  Hydra2.0
//
//  Created by Simon Desrochers on 2020-11-27.
//

import UIKit

class WaterTank: ObservableObject {

    @Published var ph: Float
    
    @Published var waterLevel1 : Float
    
    @Published var waterLevel2: Float
    
    @Published var progress: Float
    
    @Published var phTreshold : Float
    
    init() {
        
        ph = 7.0
        
        waterLevel1 = 50.0
        
        waterLevel2 = 50.0
        
        progress = 50.0
        
        phTreshold = 6.5
        
    }

}
