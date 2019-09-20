//
//  ViewController.swift
//  FlotillaCarros
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var carros : [Carro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carros.append(Carro(placas: "ARD398", modelo: "VERSA", marca: "NISSAN", año: 2010))
        carros.append(Carro(placas: "SJD456", modelo: "TSURU", marca: "TOYOTA", año: 2007))
        carros.append(Carro(placas: "FPG234", modelo: "MUSTANG", marca: "VOLSVAGEN", año: 2001))
        carros.append(Carro(placas: "JFJ460", modelo: "FOCUS", marca: "RENAULT", año: 2005))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarro") as? CarroController
        
        celda?.lblPlacas.text = carros[indexPath.row].placas
        celda?.lblModelo.text = carros[indexPath.row].modelo
        celda?.lblMarca.text = carros[indexPath.row].marca
        celda?.lblAño.text = "\(carros[indexPath.row].año)"
        
        return celda!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

}

