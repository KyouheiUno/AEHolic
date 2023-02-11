//
//  IndexTableViewCell.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/11.
//

import UIKit

class IndexTableViewCell: UITableViewCell {

    @IBOutlet weak var indexContentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        indexContentLabel.text = "ランニング"
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
