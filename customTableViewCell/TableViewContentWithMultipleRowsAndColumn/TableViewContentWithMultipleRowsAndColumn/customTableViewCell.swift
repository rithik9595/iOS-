//
//  customTableViewCell.swift
//  TableViewContentWithMultipleRowsAndColumn
//
//  Created by FCI on 28/11/24.
//

import UIKit

class customTableViewCell: UITableViewCell {
    
    @IBOutlet var label2: UILabel!
    @IBOutlet var image2: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
