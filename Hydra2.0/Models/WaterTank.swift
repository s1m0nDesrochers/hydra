//
//  WaterTank.swift
//  Hydra2.0
//
//  Created by Simon Desrochers on 2020-11-27.
//

import UIKit

class WaterTank: ObservableObject {

    @Published var ph: Float
    
    @Published var waterLevel : Float
    
    @Published var phTreshold : Float
    
    init() {
        
        ph = 7.0
        
        waterLevel = 50.0
        
        phTreshold = 6.5
        
    }

}
