//
//  ActorTableViewCell.swift
//  TestProject
//
//  Created by Владимир Ребриков on 29/01/2019.
//  Copyright © 2019 Владимир Ребриков. All rights reserved.
//

import UIKit

class ActorTableViewCell: UITableViewCell {


    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var likesLbl: UILabel!
    @IBOutlet var nameSurnameLbl: UILabel!
    @IBOutlet var tagsLbl: UILabel!
    @IBOutlet var prifilePct: UIImageView!
    @IBOutlet var postPct: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
