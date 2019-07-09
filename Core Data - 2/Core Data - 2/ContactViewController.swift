//
//  ContactViewController.swift
//  Core Data - 2
//
//  Created by Minh Thanh on 6/28/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit
import CoreData

class ContactViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var listContact: UITableView!
    
    var sendData:UserDefaults   =   UserDefaults()
    var listName:[NSManagedObject]   =   []
    override func viewDidLoad() {
        super.viewDidLoad()
        listContact.dataSource  =   self
        listContact.delegate    =   self
        let txtName:String = sendData.object(forKey: "name") as! String
        let txtPhone:String = sendData.object(forKey: "phone") as! String
        save(nameData: txtName)
        listContact.reloadData()
 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchData()
    }
    
    func save(nameData:String){
        let appDelegate:AppDelegate =   UIApplication.shared.delegate   as! AppDelegate
        let context                 =   appDelegate.persistentContainer.viewContext
        let entity                  =   NSEntityDescription.entity(forEntityName: "NguoiDung", in: context)!
        let items                   =   NSManagedObject(entity: entity, insertInto: context)
        items.setValue(nameData, forKeyPath: "name")
        items.setValue(nameData, forKeyPath: "phone")
            do{
                try context.save()
                listName.append(items)
            }catch{
            print("error")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell    =   listContact.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let showNameContact = listName[indexPath.row]
        cell.textLabel?.text    =   (showNameContact.value(forKey: "name") as! String)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  60
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(listName)
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete  =   UITableViewRowAction(style: .destructive, title: "Delete") { (action, index ) in
            self.deleteContact(indexPath: indexPath)
            self.fetchData()
            tableView.deleteRows(at: [indexPath], with: .automatic )
        }
        return [delete]
    }
    
    @IBAction func goback(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    func deleteContact(indexPath: IndexPath){
        let appDelegate:AppDelegate =   UIApplication.shared.delegate   as! AppDelegate
        let context                 =   appDelegate.persistentContainer.viewContext
        context.delete(listName[indexPath.row])
        do{
            try context.save()
        }catch{
            print("error")
        }
    }
    func fetchData(){
        let appDelegate:AppDelegate =   UIApplication.shared.delegate   as! AppDelegate
        let context                 =   appDelegate.persistentContainer.viewContext
        let request                 =   NSFetchRequest<NSFetchRequestResult>(entityName: "NguoiDung")
        do{
            listName =   try context.fetch(request) as! [NSManagedObject]
        }catch{
            print("error")
        }
    }
}
