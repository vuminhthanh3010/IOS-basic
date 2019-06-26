//
//  ViewController.swift
//  loadAvaterFacebook
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUrl: UITextField!
    @IBOutlet weak var imgHinh: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUrl.placeholder  =   "Nhập URL hình ảnh cần tài về"
    }
    
    
    @IBAction func btnLoadImg(_ sender: Any) {
        
        let idFacebook  =   "https://graph.facebook.com/"+txtUrl.text!+"/picture?type=large"
        let url:URL     =   URL(string: idFacebook)!
        let queue = DispatchQueue(label: "queue")
        queue.async {
            do{
                let data:Data   = try  Data(contentsOf: url)
                self.imgHinh.image   =   UIImage(data: data)
                
            }catch{
                let alert   =   UIAlertController(title: "Thông báo", message: "Có lỗi xảy ra, vui lòng thực hiện lại", preferredStyle: .alert)
                let btnOk   =   UIAlertAction(title: "OK", style: .default) { (ok) in
                }
                alert.addAction(btnOk)
                self.present(alert, animated: true, completion: nil)
            }
        }

    }
    
    
}
