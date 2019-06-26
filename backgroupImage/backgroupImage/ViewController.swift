//
//  ViewController.swift
//  backgroupImage
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hinh1:UIImage = UIImage(named: "01")!
    var hinh2:UIImage = UIImage(named: "02")!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.view.backgroundColor   =   UIColor(patternImage: hinh1)

    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if sender.isOn {
        self.view.backgroundColor   =   UIColor(patternImage: hinh1)
        }else{
        self.view.backgroundColor   =   UIColor(patternImage: hinh2)
        }
        
    }
    

}

