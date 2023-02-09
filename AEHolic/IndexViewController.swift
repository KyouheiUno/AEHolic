//
//  IndexViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//

import Foundation
import UIKit

class IndexViewController: UIViewController {
    override func viewDidLoad() {
        setupNavigationBarTitle()
        debugCheck()
    }
    
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "Eバンド一覧"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //デバック用として最後は消しましょう
    private func debugCheck() {
        print("IndexViewControllerの画面です")
    }
}
