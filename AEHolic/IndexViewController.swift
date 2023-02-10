//
//  IndexViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

class IndexViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarTitle()
    }
    
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "Eバンド一覧"
    }
}
