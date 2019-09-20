//
//  Carro.swift
//  FlotillaCarros
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Carro{
    
    var placas : String
    var modelo : String
    var marca : String
    var año : Int
    
    init(placas : String, modelo : String, marca : String, año : Int) {
        
        self.placas = placas
        self.modelo = modelo
        self.marca = marca
        self.año = año
        
    }
    
}
