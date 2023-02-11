//
//  HomeViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var dayOfWeekAndTimeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var todayActionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarTitle()
        configureLabel()
        homeTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
        homeTableView.separatorInset = UIEdgeInsets.zero
        homeTableView.separatorColor = .black
    }
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "AEHolic"
    }
    
    //現在の日付
    var date = Date()
    
    //日付
    func dateFormat(_ hoge: String) -> DateFormatter {
        let dateFormat = DateFormatter()
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! HomeTableViewCell
        return cell
    }
    
    //セルをタップした際の処理(alertを表示)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)番目の行が選択されました。") //最後は消しましょう
        let alert: UIAlertController = UIAlertController(title:"alert", message: "この箇所に行動内容を記載します。", preferredStyle: .alert)
        let success = UIAlertAction(title: "達成", style: .default, handler: { (action) -> Void in
                // 達成ボタン押下時に実行した処理
                // FireBaseへのデータの登録処理を記載すること
        })
        let close = UIAlertAction(title: "戻る", style: .default, handler: nil)
        let failure = UIAlertAction(title: "失敗", style: .destructive, handler: { (action) -> Void in
                // 失敗ボタン押下時に実行した処理
                // FireBaseへのデータの登録処理を記載すること
        })
        alert.addAction(success)
        alert.addAction(close)
        alert.addAction(failure)
        self.present(alert, animated: true, completion: nil)
    }
}

