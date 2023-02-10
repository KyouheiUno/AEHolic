//
//  HomeViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/10.
//
import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarTitle()
        debugCheck() //最後は消しましょう
    }
    //ナビゲーションタイトルの設定
    private func setupNavigationBarTitle() {
        title  = "AEHolic"
    }
    
    //デバック用として最後は消しましょう
    private func debugCheck() {
        print("HomeViewControllerの画面です")
    }
}
