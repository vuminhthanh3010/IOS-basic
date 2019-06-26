//
//  DANHSACHTHANHVIEN.swift
//  dangKyThanhVien
//
//  Created by Minh Thanh on 6/26/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class DANHSACHTHANHVIEN: UIViewController,UITableViewDataSource{

    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource  =   self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell    =   myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text    =   "Minh Thanh"
        return cell
    }


}
