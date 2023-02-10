//
//  HomeViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

class HomeViewController: UIViewController  {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var dayOfWeekAndTimeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var todayActionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarTitle()
        configureLabel()
    }
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "AEHolic"
    }
    
    //現在の日付
    var date = Date()
    
    //日付
    func dateFormat(_ hoge: String) -> DateFormatter {
        var dateFormat = DateFormatter()
        dateFormat.dateFormat = hoge
        dateFormat.timeZone = .current
        dateFormat.locale = Locale(identifier: "ja-JP")
        return dateFormat
    }
    
    //各種構成
    func configureLabel() {
        //今日の日付ラベル
        dateLabel.layer.cornerRadius = dateLabel.bounds.width / 2
        dateLabel.textAlignment = NSTextAlignment.center
        dateLabel.layer.borderWidth = 1.0
        dateLabel.text = dateFormat("MM / dd").string(from: date)
        dateLabel.font = dateLabel.font.withSize(25)
        //ユーザーアイコンイメージ
        userImage.layer.cornerRadius = dateLabel.bounds.width / 2
        userImage.layer.borderWidth = 1.0
        //今日の曜日ラベル
        dayOfWeekAndTimeLabel.layer.cornerRadius = dayOfWeekAndTimeLabel.bounds.width / 2
        dayOfWeekAndTimeLabel.textAlignment = NSTextAlignment.center
        dayOfWeekAndTimeLabel.layer.borderWidth = 1.0
        dayOfWeekAndTimeLabel.text = dateFormat("EEEEE").string(from: date)
        dayOfWeekAndTimeLabel.font = dateLabel.font.withSize(25)
        //本日の行動ラベル
        todayActionLabel.textAlignment = NSTextAlignment.center
        todayActionLabel.text = "〜 本日の行動 〜"
    }
}

