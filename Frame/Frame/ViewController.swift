//
//  ViewController.swift
//  Frame
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:Timer!
    
    @IBOutlet weak var imgHinh: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        timer   =   Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.chay), userInfo: nil, repeats: true)
    }
    @objc func chay(){
        imgHinh.frame.origin.x  =   imgHinh.frame.origin.x + 1
    }

    @IBAction func btn_up(_ sender: Any) {
        imgHinh.frame.origin.y  =   imgHinh.frame.origin.y - 1
    }
    
    @IBAction func btn_right(_ sender: Any) {
        imgHinh.frame.origin.x  =   imgHinh.frame.origin.x + 1
    }
    @IBAction func btn_down(_ sender: Any) {
        imgHinh.frame.origin.y  =   imgHinh.frame.origin.y + 1
    }
    @IBAction func btn_left(_ sender: Any) {
        imgHinh.frame.origin.x  =   imgHinh.frame.origin.x - 1
    }
}

