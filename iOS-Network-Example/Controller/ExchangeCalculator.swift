//
//  ExchangeCalculator.swift
//  iOS-Network-Example
//
//  Created by Fatih Canbekli on 31.01.2019.
//  Copyright © 2019 wealight. All rights reserved.
//
import UIKit
import Alamofire
class ExchangeCalculator: UIViewController {
    let url = "https://api.exchangeratesapi.io/latest?base=USD&symbols=TRY,RUB,EUR"
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var RateNumber: UITextField!
    var currencyControl: Int = 0
    var multiplier: Int = 0
    override func viewDidLoad() {

        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func RateTypeControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            currencyControl = 1
        }else if sender.selectedSegmentIndex == 1{
            currencyControl = 1
        }else{
            currencyControl = 1
        }
    }
    @IBAction func ConvertButton(_ sender: Any) {
//        var result = 0
//        var multiplier: Double? = Double(RateNumber.text!)
//        print(type(of: multiplier))
//        Alamofire.request(url, method: .get, parameters:nil, encoding: JSONEncoding.default).responseJSON { response in
//            if let json = response.result.value as? [String:AnyObject] {
//                print(json)
//                if let rates = json["rates"] as? NSDictionary {
//                    print(rates)
//                    let tryVal = rates["TRY"] as? Double
//                    let eurVal = rates["EUR"] as? Double
//                    let rubVal = rates["RUB"] as? Double
//                    if self.currencyControl == 1{
//                        result = multiplier * tryVal
//                        self.resultLabel.text = result
//
//                    }else if self.currencyControl == 2{
//                        result = multiplier! * eurVal
//                        self.resultLabel.text = result
//
//                    }else if self.currencyControl == 3{
//                        result = multiplier * rubVal
//                        self.resultLabel.text = result
//
//                    }
//
//
//
//
//
//
//
//                }
//            }
//        }
//
//
//
    }
    
}
