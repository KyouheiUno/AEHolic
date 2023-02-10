//
//  HistoryViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var historyRecordTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarTitle()
        historyRecordTableView.register(UINib(nibName: "HistoryRecordTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
        historyRecordTableView.dataSource = self
        historyRecordTableView.separatorInset = UIEdgeInsets.zero
    }
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "累積記録"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! HistoryRecordTableViewCell
        return cell
    }
}
