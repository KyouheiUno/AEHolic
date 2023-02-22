//
//  IndexViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

class IndexViewController: UIViewController ,SetNavigation {
    
    @IBOutlet weak var indexTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBarLeftTitle("Eバンド一覧")
        indexTableView.register(UINib(nibName: "IndexTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
}

extension IndexViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! IndexTableViewCell
        return cell
    }
}
