//
//  HomeTableViewCell.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/11.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var homeUserIconImage: UIImageView!
    @IBOutlet weak var homeBandStatusIconImage: UIImageView!
    @IBOutlet weak var homeContentLabel: UILabel!
    @IBOutlet weak var homeActionCountLabel: UILabel!
    @IBOutlet weak var homeHistoryRecordLabel: UILabel!
    
    //image
    let userDefaultIcon = UIImage(named: "userDefaultIcon")!
    let successIcon = UIImage(named: "successIcon")!
    let failureIcon = UIImage(named: "failureIcon")!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        homeUserIconImage.image = userDefaultIcon
        //この箇所を出し分ける
        homeBandStatusIconImage.image = successIcon
        //homeBandStatusIconImage.image = failureIcon
        //この箇所を出し分ける
        homeContentLabel.text = "表示のテスト表示のテスト表示のテスト表示のテスト表示のテスト表示のテスト表示のテスト表示のテスト"
        homeActionCountLabel.text = "実行数" + "　" + "〇〇" + "回"
        homeHistoryRecordLabel.text = "累積記録　〇〇〇〇→〇〇〇〇 "
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
