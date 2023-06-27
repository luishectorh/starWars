//
//  TableViewCell.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 21/06/23.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var viewLabel: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewLabel.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
