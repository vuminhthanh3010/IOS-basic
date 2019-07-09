//
//  TableViewCell.swift
//  SlideMenu
//
//  Created by Minh Thanh on 7/7/19.
//  Copyright © 2019 Minh Thanh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nameT: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
