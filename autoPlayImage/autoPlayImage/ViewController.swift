//
//  ViewController.swift
//  autoPlayImage
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer:Timer! = nil
    var h:Int   =   1

    @IBOutlet weak var imgHinh: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        timer   =   Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.showAnh), userInfo: nil, repeats: true)
    }
    
    @objc func showAnh(){
        
        var nameImg =   "0\(h)"
        imgHinh.image   =   UIImage(named: nameImg)
        h   += 1
        if h==9{
            h = 0
        }
        
    }


}

