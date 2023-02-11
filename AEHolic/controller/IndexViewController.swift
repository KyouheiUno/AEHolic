//
//  IndexViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

class IndexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var indexTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarTitle()
        indexTableView.register(UINib(nibName: "IndexTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
    
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "Eバンド一覧"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! IndexTableViewCell
        return cell
    }
}
