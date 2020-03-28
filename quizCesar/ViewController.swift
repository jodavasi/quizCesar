//
//  ViewController.swift
//  quizCesar
//
//  Created by MAC on 3/28/20.
//  Copyright © 2020 jodavasi`. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let tableCellIdent = "TableViewCell"
    var tabla = [Numero]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        llenarCeldas()
        // Do any additional setup after loading the view.
    }
    
    func registerCell(){
        let nib = UINib(nibName: tableCellIdent, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: tableCellIdent)
        
    }
    
    func llenarCeldas() {
        var multiplicador = 0
        var producto = 0
        var final = ""
        while (multiplicador<101){
            producto = 8 * multiplicador
            multiplicador = multiplicador + 1
            final = "8 * " + String(multiplicador)
            final += "= "
            final += String(producto)
            tabla.append(Numero(numero: final))
             
            
        }
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tabla.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: tableCellIdent)  as? TableViewCell else {
            let cell = UITableViewCell()
            return cell
        }
        cell.setupCell(resultado: tabla[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
    
    
    
    
}

