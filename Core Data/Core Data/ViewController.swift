//
//  ViewController.swift
//  Core Data
//
//  Created by Minh Thanh on 6/28/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var listPhoneNumber:[NSManagedObject]  =   []
    @IBOutlet weak var listPhone: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listPhone.delegate      =   self
        listPhone.dataSource    =   self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let appDelegate:AppDelegate =   UIApplication.shared.delegate   as! AppDelegate
        let context                 =   appDelegate.persistentContainer.viewContext
        let request                 =   NSFetchRequest<NSFetchRequestResult>(entityName: "Phone")
        do{
            listPhoneNumber =   try context.fetch(request) as! [NSManagedObject]
        }catch{
            print("error")
        }
        
    }
    @IBAction func addPhone(_ sender: Any) {
        
        let alert   =   UIAlertController(title: "Thông báo", message: "Nhập số điện thoại cần thêm vào danh bạ", preferredStyle: .alert)
        alert.addTextField { (phone) in
            phone.placeholder   =   "Số điện thoại"
            phone.keyboardType  =   .numberPad
        }
        let btnCancel   =   UIAlertAction(title: "Huỷ", style: .default) { (cancel) in}
        let btnOk       =   UIAlertAction(title: "Thêm", style: .default) { (ok) in
            let addPhone:String =   alert.textFields![0].text!
            self.save(itemName: addPhone)
            self.listPhone.reloadData()
        }
        alert.addAction(btnCancel)
        alert.addAction(btnOk)
        present(alert, animated: true, completion: nil)
        
    }
    
    func save(itemName:String){
        let appADelegate:AppDelegate =   UIApplication.shared.delegate   as! AppDelegate
        let context =   appADelegate.persistentContainer.viewContext
        let entity  =   NSEntityDescription.entity(forEntityName: "Phone", in: context)!
        let item    =   NSManagedObject(entity: entity, insertInto: context)
        item.setValue(itemName, forKeyPath: "phone")
        do{
            try context.save()
            listPhoneNumber.append(item)
        }catch{
            print("error")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPhoneNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell    =   listPhone.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var item    =   listPhoneNumber[indexPath.row]
        cell.textLabel?.text    =   item.value(forKey: "phone") as! String
        return cell
    }
}

