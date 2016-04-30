//
//  SecondViewController.swift
//  Swift-block
//
//  Created by hgdq on 16/4/30.
//  Copyright © 2016年 hgdq. All rights reserved.
//

import UIKit
/// 声明一个block
typealias SecondViewControllerBlock = (String)->()

class SecondViewController: UIViewController, UITextFieldDelegate{
        /// 持有一个block变量
    var block : SecondViewControllerBlock?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "第二个页面"
        // Do any additional setup after loading the view.
    }
// MARK: UITextFieldDelegate
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return true
    }
    func textFieldDidBeginEditing(textField: UITextField) {
        
    }
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        // 赋值
        self.block!(textField.text!)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder() // 收起键盘
        if textField.returnKeyType == UIReturnKeyType.Done {
            // 返回上一页面
            self.navigationController?.popViewControllerAnimated(true)
        }
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
