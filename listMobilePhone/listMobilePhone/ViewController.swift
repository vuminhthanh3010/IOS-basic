//
//  ViewController.swift
//  listMobilePhone
//
//  Created by Minh Thanh on 6/27/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var listPhone: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listPhone.dataSource    =   self
        listPhone.delegate      =   self
    }
    
    var imgPhone    =   ["samsung-galaxy-s10","oppo-f11","iphone-xs-max","huawei-p30-lite","iphone-x","huawei-mate-20"]
    
    var namePhone   =   ["Điện thoại Samsung S10+","Điện thoại OPPO F11","Điện thoại iPhone Xs Max ","Điện thoại Huawei P30 Lite","Điện thoại iPhone X 64GB","Điện thoại Huawei Mate 20"]
    
    var pricePhone  =   ["23.990.000₫","7.290.000₫","39.990.000₫","6.690.000₫","21.990.000₫","14.490.000₫"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  namePhone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell    =   listPhone.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //Image
        let imgHinh:UIImageView =   UIImageView(frame: CGRect(x: 10,y: 10,width: 120,height: 120))
        imgHinh.image   =   UIImage(named: imgPhone[indexPath.row])
        cell.addSubview(imgHinh)
        
        //Name
        let name:UILabel    =   UILabel(frame: CGRect(x: 150,y: 10,width: 300,height: 30))
        name.text   =   namePhone[indexPath.row]
        name.font   =   .boldSystemFont(ofSize: 20)
        cell.addSubview(name)
        
        //Price
        let price:UILabel   =   UILabel(frame: CGRect(x: 150,y: 60,width: 300,height: 30))
        price.text   =   pricePhone[indexPath.row]
        price.font   =   .boldSystemFont(ofSize: 20)
        price.textColor =   .red
        cell.addSubview(price)
        
        if indexPath.row % 2 == 0 {
        cell.backgroundColor    =   UIColor(hue: 0.4111, saturation: 0.1, brightness: 0.97, alpha: 1.0)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("click")
    }

}

