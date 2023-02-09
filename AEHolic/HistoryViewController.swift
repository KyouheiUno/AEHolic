//
//  HistoryViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController {
    override func viewDidLoad() {
        setupNavigationBarTitle()
        debugCheck() //最後は消しましょう
    }
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "累積記録"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //デバック用として最後は消しましょう
    private func debugCheck() {
        print("HistoryViewControllerの画面です")
    }
}
