//
//  DataTableViewCell.swift
//  TestProject
//
//  Created by Владимир Ребриков on 04/02/2019.
//  Copyright © 2019 Владимир Ребриков. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {


    @IBOutlet var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
