//
//  InfoPhone.swift
//  listMobilePhone
//
//  Created by Minh Thanh on 6/27/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class InfoPhone: UIViewController {

    var sendData:UserDefaults   =   UserDefaults()
    
    @IBOutlet weak var showName: UILabel!
    @IBOutlet weak var showImg: UIImageView!
    @IBOutlet weak var showPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let receiveName:String  =   sendData.object(forKey: "name") as! String
        let receiveImage:String  =   sendData.object(forKey: "image") as! String
        let receivePrice:String  =   sendData.object(forKey: "price") as! String
        
        showName.text   =   receiveName
        showImg.image   =   UIImage(named: receiveImage)
        showPrice.text   =   receivePrice

    }
    

}
