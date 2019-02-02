//
//  ExchangeShowcase.swift
//  iOS-Network-Example
//
//  Created by Fatih Canbekli on 31.01.2019.
//  Copyright © 2019 wealight. All rights reserved.
//

import UIKit
import Alamofire
class ExchangeShowcase: UIViewController {
    let url = "https://api.exchangeratesapi.io/latest?base=USD&symbols=TRY,RUB,EUR"
    @IBOutlet weak var tryValue: UILabel!
    @IBOutlet weak var eurValue: UILabel!
    @IBOutlet weak var rubValue: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tryValue.text = "0";
        eurValue.text = "0";
        rubValue.text = "0";
    }
    @IBAction func RefreshButton(_ sender: Any) {
        
        Alamofire.request(url, method: .get, parameters:nil, encoding: JSONEncoding.default).responseJSON { response in
            if let json = response.result.value as? [String:AnyObject] {
                
                if let rates = json["rates"] as? NSDictionary {
                    
                    if let tryRate = rates["TRY"] {
                        self.tryValue.text = "\(tryRate)"
                    }
                    if let eurRate = rates["EUR"] {
                        self.eurValue.text = "\(eurRate)"
                    }
                    if let rubRate = rates["RUB"] {
                        self.rubValue.text = "\(rubRate)"
                    }
                   
                }
            }
        }
        
        
        
    }
    


    
}

