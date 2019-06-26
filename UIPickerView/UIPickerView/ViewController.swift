//
//  ViewController.swift
//  UIPickerView
//
//  Created by Minh Thanh on 6/27/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var titleImg: UILabel!
    @IBOutlet weak var myPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.dataSource =   self
        myPicker.delegate   =   self
        titleImg.text   =   "1 cơ"
    }
    
    var listImg =   ["1co","2co","3co","4co","5co","6co","7co","8co","9co","10co"]
    var nameImg = ["1 cơ","2 cơ","3 cơ","4 cơ","5 cơ","6 cơ","7 cơ","8 cơ","9 cơ","10 cơ"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listImg.count
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let hinh:UIImageView    =   UIImageView(frame: CGRect(x: 0,y: 0,width: 80,height: 100))
        hinh.image  =   UIImage(named: listImg[row])
        return hinh
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        titleImg.text   =   nameImg[row]
    }

}

