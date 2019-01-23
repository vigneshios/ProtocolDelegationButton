//
//  DataService.swift
//  ProtocolDelegation
//
//  Created by Vignesh on 23/01/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let superHeros = [
        SuperHero(name: "Batman", img: "b1.jpg", isSelected: false),
        SuperHero(name: "Superman", img: "b2.jpg", isSelected: false),
        SuperHero(name: "Ironman", img: "b3.jpg", isSelected: false),
        SuperHero(name: "WonderWomen", img: "b4.jpg", isSelected: false),
        SuperHero(name: "Joker", img: "b5.jpg", isSelected: false)
    ]
    
    func getSuperHeros() -> [SuperHero] {
        return superHeros
    }
}
