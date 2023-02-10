//
//  IndexTableViewCell.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/11.
//

import UIKit

class IndexTableViewCell: UITableViewCell {

    @IBOutlet weak var indexContentLabel: UILabel!
    @IBOutlet weak var indexStartDateLabel: UILabel!
    @IBOutlet weak var indexFinishDateLabel: UILabel!
    @IBOutlet weak var indexTotalRecordLabel: UILabel!
    @IBOutlet weak var indexSuccessCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        indexContentLabel.text = "ランニング"
        indexStartDateLabel.text = "yyyy/mm/dd"
        indexFinishDateLabel.text = "継続中"
        indexTotalRecordLabel.text = "累積記録"
        indexSuccessCountLabel.text = "達成回数"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
