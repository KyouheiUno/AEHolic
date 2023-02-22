//
//  CreateBandViewController.swift
//  AEHolic
//
//  Created by 宇野恭平 on R 5/02/21.
//

import UIKit

class CreateBandViewController: UIViewController {
    
    @IBOutlet weak var bandContentView: UITextView!
    @IBOutlet weak var additionalValueField: UITextField!
    @IBOutlet weak var unitField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bandContentConfigure()
        setDoneButton()
        picker()
    }
    
    //バンド内容枠の構成
    func bandContentConfigure() {
        let bandContent: UITextView = bandContentView
        bandContent.layer.borderColor = UIColor.lightGray.cgColor
        bandContent.layer.borderWidth = 1.0
        bandContent.layer.cornerRadius = 8
    }
    
    //キーボードの閉じるボタンを表示
    @objc func tapDoneButton() {
        view.endEditing(true)
    }
    
    //キーボードの閉じるボタンを表示
    func setDoneButton() {
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        let commitButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(tapDoneButton))
        toolBar.items = [commitButton]
        bandContentView.inputAccessoryView = toolBar
        additionalValueField.inputAccessoryView = toolBar
    }
    
    //ドラムロールを設定
    var pickerView: UIPickerView = UIPickerView()
    let pickerList: [String] = ["日","週","月","秒","分","時間","m","km","回"]
    
    //キーボード内に表示するピッカーの設定
    func picker() {
        //ピッカー設定
        pickerView.delegate = self
        pickerView.dataSource = self
        //選択行をハイライト
        pickerView.showsSelectionIndicator = true
        //決定・キャンセル用ツールバーの生成
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let spaceItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        let cancelItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
        toolbar.setItems([doneItem, spaceItem, cancelItem], animated: true)
        //インプットビュー設定
        unitField.inputView = pickerView
        unitField.inputAccessoryView = toolbar
        //デフォルト設定
        pickerView.selectRow(4, inComponent: 0, animated: false)
    }
    
    //完了ボタンを表示
    @objc func done() {
        unitField.endEditing(true)
        unitField.text = "\(pickerList[pickerView.selectedRow(inComponent: 0)])"
    }
    
    //キャンセルボタンのアクション指定
    @objc func cancel(){
        unitField.endEditing(true)
    }
    
    // 3. 画面タップでテキストフィールドを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        unitField.endEditing(true)
    }
}

extension CreateBandViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    //ピッカービューの列数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerList.count
    }
    
    //ピッカービューの行数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //ピッカービューに表示する内容
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerList[row]
    }
}
