//
//  ViewController.swift
//  EasyCountDownButton
//
//  Created by yuanxiaojun on 16/8/10.
//  Copyright © 2016年 袁晓钧. All rights reserved.
//

import UIKit
import EasyCountDownButton

class ViewController: UIViewController {

    let btn = EasyCountDownButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))

    override func viewDidLoad() {
        super.viewDidLoad()

        btn.disableConfig = EasyCountDownButtonConfig(
            font: UIFont.systemFontOfSize(14),
            title: "剩余 5 秒",
            titleColor: UIColor.grayColor(),
            backgroundColor: UIColor.groupTableViewBackgroundColor(),
            backgroundImage: nil)

        btn.enableConfig = EasyCountDownButtonConfig(
            font: UIFont.systemFontOfSize(14),
            title: "获取验证码",
            titleColor: UIColor.magentaColor(),
            backgroundColor: UIColor.blueColor(),
            backgroundImage: nil)

        self.view.addSubview(btn)

        // 点击事件  button type要 设置成custom 否则会闪动
        btn.addToucheHandler { (btn, second) in
            btn.startWithSecond(5)
        }

        // 时间改变
        btn.didChange { (btn, second) -> String! in
            return "剩余 \(second) 秒"
        }

        // 时间结束
        btn.didFinished { (btn, second) in
            print(btn)
            print(second)
        }

        // 手动停止
//        btn.stop()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

