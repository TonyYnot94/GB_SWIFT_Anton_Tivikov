//
//  FriendsTableViewCell.swift
//  UI_GB_Тивиков_Антон
//
//  Created by Антон Тивиков on 12.11.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var friendPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
