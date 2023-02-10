//
//  HistoryRecordTableViewCell.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/11.
//

import UIKit

class HistoryRecordTableViewCell: UITableViewCell {

    @IBOutlet weak var historyRecordContentLabel: UILabel!
    @IBOutlet weak var historyRecordStartDateLabel: UILabel!
    @IBOutlet weak var historyRecordFinishDateLabel: UILabel!
    @IBOutlet weak var historyRecordSuccessCountLabel: UILabel!
    @IBOutlet weak var historyRecordTotalValueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        historyRecordContentLabel.text = "ランニング"
        historyRecordStartDateLabel.text = "yyyy/mm/dd"
        historyRecordFinishDateLabel.text = "継続中"
        historyRecordTotalValueLabel.text = "累積記録"
        historyRecordSuccessCountLabel.text = "達成回数"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
