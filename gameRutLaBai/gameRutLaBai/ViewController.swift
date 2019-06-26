//
//  ViewController.swift
//  gameRutLaBai
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var show: UILabel!
    @IBOutlet weak var showB: UILabel!
    
    var boBai   =   ["1co","2co","3co","4co","5co","6co","7co","8co","9co",
                     "1ro","2ro","3ro","4ro","5ro","6ro","7ro","8ro","9ro",
                     "1tep","2tep","3tep","4tep","5tep","6tep","7tep","8tep","9tep",
                     "1bich","2bich","3bich","4bich","5bich","6bich","7bich","8bich","9bich"]
    var kqA:Int = 0
    var kqB:Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        show.text   =   ""
        showB.text   =   ""

    }


    @IBAction func btn_A(_ sender: Any) {
        // la thu 1
        var arrayCount:Int  =   boBai.count
        var r:Int   =   Int(arc4random())%arrayCount
        let nameImg1:String  =   boBai[r]
        let a1:Int = Int(String(nameImg1[nameImg1.startIndex]))!
        img1.image  =   UIImage(named: boBai[r])
        boBai.remove(at: r)
        
        // la thu 2
        arrayCount  =   boBai.count
        r  =   Int(arc4random())%arrayCount
        let nameImg2:String  =   boBai[r]
        let a2:Int = Int(String(nameImg2[nameImg2.startIndex]))!
        img2.image  =   UIImage(named: boBai[r])
        boBai.remove(at: r)
        
        // la thu 3
        arrayCount =   boBai.count
        r =   Int(arc4random())%arrayCount
        let nameImg3:String  =   boBai[r]
        let a3:Int = Int(String(nameImg3[nameImg3.startIndex]))!
        img3.image  =   UIImage(named: boBai[r])
        boBai.remove(at: r)
        
        show.text   =   "\(a1+a2+a3) điểm"
        kqA =   a1+a2+a3
        
    }
    
    @IBAction func btn_B(_ sender: Any) {
        // la thu 4
        var arrayCount2:Int  =   boBai.count
        var r2:Int   =   Int(arc4random())%arrayCount2
        let nameImg4:String  =   boBai[r2]
        let a4:Int = Int(String(nameImg4[nameImg4.startIndex]))!
        img4.image  =   UIImage(named: boBai[r2])
        boBai.remove(at: r2)

        // la thu 5
        arrayCount2  =   boBai.count
        r2  =   Int(arc4random())%arrayCount2
        let nameImg5:String  =   boBai[r2]
        let a5:Int = Int(String(nameImg5[nameImg5.startIndex]))!
        img5.image  =   UIImage(named: boBai[r2])
        boBai.remove(at: r2)

        // la thu 6
        arrayCount2 =   boBai.count
        r2 =   Int(arc4random())%arrayCount2
        let nameImg6:String  =   boBai[r2]
        let a6:Int = Int(String(nameImg6[nameImg6.startIndex]))!
        img6.image  =   UIImage(named: boBai[r2])
        boBai.remove(at: r2)
        
        kqB =   a4+a5+a6
        showB.text   =   "\(a4+a5+a6) điểm"
    }
    
    
    @IBAction func btn_kq(_ sender: Any) {
        
        if kqA > kqB{
            let alert   =   UIAlertController(title: "Thông báo", message: "Người chơi A thắng", preferredStyle: .alert)
            let ok      =   UIAlertAction(title: "OK", style: .default) { (ok) in
                self.upbai()
            }
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        }else if kqA == kqB{
            let alert   =   UIAlertController(title: "Thông báo", message: "Hai người chơi hoà nhau", preferredStyle: .alert)
            let ok      =   UIAlertAction(title: "OK", style: .default) { (ok) in
                self.upbai()
            }
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        }else if kqA < kqB{
            let alert   =   UIAlertController(title: "Thông báo", message: "Người chơi B thắng", preferredStyle: .alert)
            let ok      =   UIAlertAction(title: "OK", style: .default) { (ok) in
                self.upbai()
            }
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        }
        
    }
    func upbai(){
        img1.image  =   UIImage(named: "up")
        img2.image  =   UIImage(named: "up")
        img3.image  =   UIImage(named: "up")
        img4.image  =   UIImage(named: "up")
        img5.image  =   UIImage(named: "up")
        img6.image  =   UIImage(named: "up")
        show.text   =   ""
        showB.text  =   ""
    }
}

