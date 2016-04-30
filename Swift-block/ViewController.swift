//
//  ViewController.swift
//  Swift-block
//
//  Created by hgdq on 16/4/30.
//  Copyright © 2016年 hgdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var showLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // 页面消失时  清空显示
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(true)
        self.showLabel.text = ""
    }
// MARK: 跳转到下一个页面
    @IBAction func nextBtnClick(sender: AnyObject) {
        let sVC = SecondViewController()
        sVC.block = {str in
            // 接受block的传值
            self.showLabel.text = str
        }
        // 跳转到下一个页面
        self.navigationController?.pushViewController(sVC, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

