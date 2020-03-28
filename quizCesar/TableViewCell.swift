//
//  TableViewCell.swift
//  quizCesar
//
//  Created by MAC on 3/28/20.
//  Copyright © 2020 jodavasi`. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    
    func setupCell(resultado: Numero) {
        label.text = resultado.numero
    }
    
    
    
}
