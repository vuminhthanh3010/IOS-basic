//
//  MANHINH2ViewController.swift
//  UserDefaults
//
//  Created by Minh Thanh on 6/27/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class MANHINH2ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var listContact: UITableView!
    @IBOutlet weak var titleContact: UILabel!
    
    var thamSoTruyen:UserDefaults = UserDefaults()
    var listPhone:[String]  =   []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listContact.dataSource  =   self
        listContact.delegate    =   self
        
        let phone:String    =   thamSoTruyen.object(forKey: "phone") as! String
        listPhone.append(phone)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  listPhone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell    =   listContact.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text    =   listPhone[indexPath.row]
        return cell
    }
}
