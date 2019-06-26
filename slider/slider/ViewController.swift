//
//  ViewController.swift
//  slider
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var imgHinh: UIImageView!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.maximumValue =   9
        slider.minimumValue =   1
        slider.value    =   1
        result.text =   "Image 1"
        imgHinh.image   =   UIImage(named: "01")
        result.textAlignment    =   .center
        result.font =   .boldSystemFont(ofSize: 30)
    }

    @IBAction func sliderResult(_ sender: Any) {
        
        var kq:Float =   Float(slider.value)
        kq  =   roundf(kq)
        result.text =   "Image "+String(Int(kq))
        var img:String  =   "0\(kq)"
        imgHinh.image   =   UIImage(named: img)
        
    }
    
}

