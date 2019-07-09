//
//  ViewController.swift
//  SlideMenu
//
//  Created by Minh Thanh on 7/7/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var MyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTableView.dataSource  =   self
        MyTableView.delegate    =   self
        myView.isHidden =   true
        MyTableView.backgroundColor =   UIColor.groupTableViewBackground
    }
    
    let arrName =   ["Username","Password","Email","Address"]
    let arrImg  =   ["user","password","email","address"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell    =   MyTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.avatar.image   =   UIImage(named: arrImg[indexPath.row])
        cell.nameT.text     =   arrName[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
