//
//  ViewController.swift
//  dangKyThanhVien
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtPhone.keyboardType   =   .numberPad
    }

    @IBAction func btn_SignUp(_ sender: Any) {
        let name:String =   String(txtName.text!)
        let phone:String =   String(txtPhone.text!)
        
        if !name.isEmpty && !phone.isEmpty {
            let alertSingUp   =   UIAlertController(title: "Thông báo", message: "Bạn có chắc chắn muốn đăng ký tài khoản?", preferredStyle: .alert)
            let btn_cancelSingUp  =   UIAlertAction(title: "Cancel", style: .default) { (ok) in
                self.txtPhone.text   =   ""
                self.txtName.text    =   ""
            }
            let btn_okSingUp  =   UIAlertAction(title: "OK", style: .default) { (ok) in
                let sb  =   UIStoryboard(name: "Main", bundle: nil)
                let mh2 =   sb.instantiateViewController(withIdentifier: "manhinh2")
                self.navigationController?.pushViewController(mh2, animated: true)
            }
            alertSingUp.addAction(btn_cancelSingUp)
            alertSingUp.addAction(btn_okSingUp)
            present(alertSingUp, animated: true, completion: nil)
        }else{
            let alert   =   UIAlertController(title: "Thông báo", message: "Bạn chưa nhập đủ thông tin", preferredStyle: .alert)
            let btn_ok  =   UIAlertAction(title: "OK", style: .default) { (ok) in
            }
            alert.addAction(btn_ok)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func btn_Delete(_ sender: Any) {
        txtPhone.text   =   ""
        txtName.text    =   ""
    }
}

