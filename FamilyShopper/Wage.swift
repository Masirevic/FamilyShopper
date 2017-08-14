//
//  Wage.swift
//  FamilyShopper
//
//  Created by Ljubomir on 8/15/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import Foundation

class Wage {
    
    class func  getHours(forWage wage: Double, andPrice price: Double) -> Int {
       return Int(ceil(wage / price))
    }
    
}



