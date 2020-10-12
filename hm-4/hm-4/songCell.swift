//
//  songCell.swift
//  hm-4
//
//  Created by Abdullah Albakeet on 10/11/20.
//  Copyright © 2020 Abdullah Albakeet. All rights reserved.
//

import UIKit

class songCell: UITableViewCell {
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCell.layer.cornerRadius = 40
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
