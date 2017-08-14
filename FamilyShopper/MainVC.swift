//
//  MainVC.swift
//  FamilyShopper
//
//  Created by Ljubomir on 8/15/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var currencyTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9177564538, green: 0.5261627021, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        currencyTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    

   @objc func calculate () {
    if let currencyTxt = currencyTxt.text, let priceTxt = priceTxt.text {
        if let wage = Double(currencyTxt), let price = Double(priceTxt) {
            view.endEditing(true)
            resultLbl.isHidden = false
            hoursLbl.isHidden = false
            resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            
        }
    }
    }
    

    @IBAction func clearCalculator(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        currencyTxt.text = " "
        priceTxt.text = " "
        
    }
    
}

