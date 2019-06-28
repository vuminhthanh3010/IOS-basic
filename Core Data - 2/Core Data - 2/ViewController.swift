//
//  ViewController.swift
//  Core Data - 2
//
//  Created by Minh Thanh on 6/28/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    let sendData:UserDefaults   =   UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.placeholder    =   "Tên liên hệ"
        phone.placeholder   =   "Số điện thoại"
        phone.keyboardType  =   .numberPad
        
    }

    @IBAction func btnAdd(_ sender: Any) {
        
        var inputName:String    =   name.text!
        var inputPhone:String   =   phone.text!
        
        if !inputName.isEmpty && !inputPhone.isEmpty {
            
            let alertSignUp   =   UIAlertController(title: "Thông báo", message: "Bạn có chắc chắn muốn thêm liên hệ?", preferredStyle: .alert)
            let btnCancel   =   UIAlertAction(title: "Không", style: .default) { (ok) in
                inputName   =   ""
                inputPhone  =   ""
            }
            let btnOk   =   UIAlertAction(title: "Có", style: .default) { (ok) in
                self.sendData.set(inputName, forKey: "name")
                self.sendData.set(inputPhone, forKey: "phone")
                let sb  =   UIStoryboard(name: "Main", bundle: nil)
                let mh2 =   sb.instantiateViewController(withIdentifier: "contact") as! ContactViewController
                self.navigationController?.pushViewController(mh2, animated: true)
                self.name.text   =   ""
                self.phone.text   =   ""

            }
            alertSignUp.addAction(btnCancel)
            alertSignUp.addAction(btnOk)
            present(alertSignUp, animated: true, completion: nil)
            
        }else{
            let alert   =   UIAlertController(title: "Thông báo", message: "Bạn chưa nhập đủ thông tin liên hệ", preferredStyle: .alert)
            let btnOk   =   UIAlertAction(title: "OK", style: .default) { (ok) in }
            alert.addAction(btnOk)
            present(alert, animated: true, completion: nil)
        }
    }
    
}

