//
//  SuperHero.swift
//  ProtocolDelegation
//
//  Created by Vignesh on 23/01/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

struct SuperHero {
    var name: String
    var img: String
    var isSelected: Bool
    
    
    init(name: String, img: String, isSelected: Bool) {
        self.name = name
        self.img = img
        self.isSelected = isSelected
    }
}
