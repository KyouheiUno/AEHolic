//
//  HomeViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        setupNavigationBarTitle()
    }
    //ナビゲーションタイトルの設定
    func setupNavigationBarTitle() {
        title  = "AEHolic"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
