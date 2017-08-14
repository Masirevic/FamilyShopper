//
//  CurrencyTxtField.swift
//  FamilyShopper
//
//  Created by Ljubomir on 8/15/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
    
        
    }

}
