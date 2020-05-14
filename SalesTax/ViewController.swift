//
//  ViewController.swift
//  SalesTax
//
//  Created by Vivi Nguyen on 5/14/20.
//  Copyright © 2020 Vivi Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalPriceLbl.text = ""
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "\(totalPrice)"
    }
    
}

