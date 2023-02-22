//
//  navigation.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/23.
//

import UIKit

protocol SetNavigation {}
extension SetNavigation where Self: UIViewController  {
    func setNavigationBarLeftTitle(_ title: String) {
        let titleLabel = UILabel(frame: CGRect(x: 4, y: 0, width: view.frame.width, height: 28))
        titleLabel.text = title
        titleLabel.textAlignment = .left
        titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        titleLabel.textColor = .black
        navigationItem.titleView = titleLabel
    }
}
