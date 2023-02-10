//
//  HistoryViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

class HistoryViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarTitle()
    }
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "累積記録"
    }
}
