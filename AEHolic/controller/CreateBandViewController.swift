//
//  CreateBandViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/21.
//

import UIKit

//ナビゲーションバー戻るボタン
var returnButtonItem: UIBarButtonItem!

class CreateBandViewController: UIViewController {
    
    @IBOutlet weak var bandContentView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnButtonItem = UIBarButtonItem(title: "戻る", style: .done, target: self, action: #selector(returenFromCreateBandView(_:)))
        self.navigationItem.leftBarButtonItem = returnButtonItem
        bandContentConfigure()
    }
    
    //バンド内容枠の構成
    func bandContentConfigure() {
        let bandContent: UITextView = bandContentView
        bandContent.layer.borderColor = UIColor.lightGray.cgColor
        bandContent.layer.borderWidth = 1.0
        bandContent.layer.cornerRadius = 8
    }
    
    //バンド新規作成画面遷移処理
    @objc func returenFromCreateBandView(_ sender: UIBarButtonItem) {
        print("戻るボタンが押されました")
//        let storyboard = UIStoryboard(name: "CreateBandView", bundle: nil)
//        guard let CreateBandViewController = storyboard.instantiateInitialViewController() as? CreateBandViewController else { return }
//        present(CreateBandViewController, animated: true)
    }
    
}
