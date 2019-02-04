//
//  ImagesTableViewCell.swift
//  TestProject
//
//  Created by Владимир Ребриков on 03/02/2019.
//  Copyright © 2019 Владимир Ребриков. All rights reserved.
//

import UIKit

class ImagesTableViewCell: UITableViewCell {
    @IBOutlet var imagesView: UIImageView!
    
    @IBOutlet var urlLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
