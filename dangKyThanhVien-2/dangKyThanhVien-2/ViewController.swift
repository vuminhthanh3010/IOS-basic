//
//  ViewController.swift
//  dangKyThanhVien-2
//
//  Created by Minh Thanh on 6/27/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var sliderAge: UISlider!
    @IBOutlet weak var showAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        showAge.text    =   "0"
        sliderAge.value =   0
        sliderAge.minimumValue  =   0
        sliderAge.maximumValue  =   30
        txtPass.isSecureTextEntry   =   true
    }
    @IBAction func selectAge(_ sender: Any) {
        let convertToInt:Int    =   Int(roundf(sliderAge.value))
        showAge.text = "\(convertToInt)"
    }
    
    @IBAction func btn_SignUp(_ sender: Any) {
        
        let user:String =   txtUser.text!
        let pass:String =   txtPass.text!
        let name:String =   txtName.text!
        let address:String =   txtAddress.text!
        let age:Int =   Int(sliderAge.value)
        if !user.isEmpty && !pass.isEmpty && !name.isEmpty && !address.isEmpty && age > 0 {
            
            if Int(user.count) >= 8 && Int(user.count) < 21 {
                    let alert2   =   UIAlertController(title: "Thông báo", message: "Bạn có chắc chắn muốn đăng ký tài khoản?", preferredStyle: .alert)
                    let btn_cancel2  =   UIAlertAction(title: "Cancel", style: .default) { (cancel) in
                        self.txtPass.text    =   ""
                        self.txtUser.text    =   ""
                        self.txtName.text    =   ""
                        self.txtAddress.text    =   ""
                        self.sliderAge.value    =   0
                        self.showAge.text    =   "0"
                    }
                    let btn_ok2  =   UIAlertAction(title: "OK", style: .default) { (ok) in
                        let sb  =   UIStoryboard(name: "Main", bundle: nil)
                        let mh2 =   sb.instantiateViewController(withIdentifier: "manhinh2") as! THONGTINTAIKHOAN
                        self.navigationController?.pushViewController(mh2, animated: true)
                    }
                    alert2.addAction(btn_cancel2)
                    alert2.addAction(btn_ok2)
                    present(alert2, animated: true, completion: nil)
                }else{
                    let alert1   =   UIAlertController(title: "Thông báo", message: "Tên tài khoản có độ dài từ 6 đến 20 kí tự", preferredStyle: .alert)
                    let btn_ok1  =   UIAlertAction(title: "OK", style: .default) { (ok) in
                    }
                    alert1.addAction(btn_ok1)
                    present(alert1, animated: true, completion: nil)
                }
        }else{
                let alert   =   UIAlertController(title: "Thông báo", message: "Bạn chưa nhập đủ thông tin", preferredStyle: .alert)
                let btn_ok  =   UIAlertAction(title: "OK", style: .default) { (ok) in
                }
                alert.addAction(btn_ok)
                present(alert, animated: true, completion: nil)
        }
    }
    
}

