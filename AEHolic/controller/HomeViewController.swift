//
//  HomeViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

//ナビゲーション用のボタンを用意
var addButtonItem: UIBarButtonItem!

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
        //ナビゲーションボタン初期設定
        addButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonPressed(_:)))
        self.navigationItem.rightBarButtonItem = addButtonItem
    }
    
    @objc func addButtonPressed(_ sender: UIBarButtonItem) {
        //画面遷移をする記述を追加すること
        print("追加ボタンが押されました")
    }
    
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "AEHolic"
    }
    
    //現在の日付
    var date = Date()
    
    //日付
    func dateFormat(_ fotmat: String) -> DateFormatter {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = fotmat
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
    
    //セルをタップした際の処理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! HomeTableViewCell
        let messeage = cell.homeContentLabel.text!
        configureAlert(messeage)
    }
    
    //アラートの構成(セルタップ時に適応)
    func configureAlert(_ massage: String) {
        let alert = UIAlertController(title:"達成できましたか？", message: massage, preferredStyle: .alert)
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
