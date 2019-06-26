//
//  ViewController.swift
//  mayTinhCaNhan
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var show: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btn16: UIButton!
    
    var so1:Int!
    var so2:Int!
    var dau:String!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customButton(myButton: btn1)
        customButton(myButton: btn2)
        customButton(myButton: btn3)
        customButton(myButton: btn4)
        customButton(myButton: btn5)
        customButton(myButton: btn6)
        customButton(myButton: btn7)
        customButton(myButton: btn8)
        customButton(myButton: btn9)
        customButton(myButton: btn10)
        customButton(myButton: btn11)
        customButton(myButton: btn12)
        customButton(myButton: btn13)
        customButton(myButton: btn14)
        customButton(myButton: btn15)
        customButton(myButton: btn16)
        
        show.text   =   ""
        
        btn4.backgroundColor    =   UIColor(red: 255/255, green: 180/255, blue: 79/255, alpha: 1
        )
        btn8.backgroundColor    =   UIColor(red: 255/255, green: 180/255, blue: 79/255, alpha: 1
        )
        btn12.backgroundColor    =   UIColor(red: 255/255, green: 180/255, blue: 79/255, alpha: 1
        )
        btn16.backgroundColor    =   UIColor(red: 255/255, green: 180/255, blue: 79/255, alpha: 1
        )
        
    }
 
    @IBAction func cong(_ sender: Any) {
        pheptinh(tinh: "+")
    }
    
    @IBAction func tru(_ sender: Any) {
        pheptinh(tinh: "-")
    }
    @IBAction func nhan(_ sender: Any) {
        pheptinh(tinh: "*")
    }
    @IBAction func chia(_ sender: Any) {
        pheptinh(tinh: "/")
    }
    
    @IBAction func bang(_ sender: Any) {
        var s2:String = show.text!
        so2 = Int(s2)
         var kq:Int = 0
        if dau == "+" {
            kq += so1 + so2
        }
        if dau == "-" {
            kq += so1 - so2
        }
        if dau == "*" {
            kq += so1 * so2
        }
        if dau == "/" {

            
           kq += Int(Float(so1) / Float(so2))
           
            
        }
        show.text   =   "\(kq)"
    }
    @IBAction func click0(_ sender: Any) {
        nut(number: "0")
        
    }
    @IBAction func click1(_ sender: Any) {
        nut(number: "1")
    }
    @IBAction func click2(_ sender: Any) {
        nut(number: "2")
    }
    @IBAction func click3(_ sender: Any) {
        nut(number: "3")
    }
    @IBAction func click4(_ sender: Any) {
        nut(number: "4")
    }
    @IBAction func click6(_ sender: Any) {
        nut(number: "6")
    }
    @IBAction func click5(_ sender: Any) {
        nut(number: "5")
    }
    @IBAction func click7(_ sender: Any) {
        nut(number: "7")
    }
    @IBAction func click8(_ sender: Any) {
        nut(number: "8")
    }
    @IBAction func click9(_ sender: Any) {
        nut(number: "9")
    }
    @IBAction func clear(_ sender: Any) {
        show.text   =   ""
    }
    func customButton(myButton:UIButton){
        myButton.layer.cornerRadius = myButton.frame.size.width/2
        myButton.clipsToBounds = true
        myButton.layer.borderColor = UIColor.lightGray.cgColor
        myButton.layer.borderWidth = 0.5
        
        myButton.backgroundColor    =   UIColor(red: 243/255, green: 255/255, blue: 246/255, alpha: 1)
        myButton.setTitleColor(.gray, for: .normal)
        myButton.titleLabel?.font   = UIFont(name: "Arial",
            size: 30)
    }
    func nut(number:String){
        var ketqua:String   =   show.text!
        ketqua += number
        show.text   =   ketqua
    }
    func pheptinh(tinh:String){
        var s1:String = show.text!
        so1 = Int(s1)
        show.text   =   ""
        dau = tinh
    }


}

