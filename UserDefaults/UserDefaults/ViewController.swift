//
//  ViewController.swift
//  UserDefaults
//
//  Created by Minh Thanh on 6/27/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPhone: UITextField!
    
    var thamSoTruyen:UserDefaults = UserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        txtPhone.keyboardType   =   .numberPad
        txtPhone.placeholder    =   "Nhập số điện thoại của bạn"
    }

    @IBAction func btnNexr(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let mh2 =   sb.instantiateViewController(withIdentifier: "manhinh2") as! MANHINH2ViewController
        
        thamSoTruyen.set(txtPhone.text, forKey: "phone")
        
        self.navigationController?.pushViewController(mh2, animated: true)
        
    }
    
    
}

