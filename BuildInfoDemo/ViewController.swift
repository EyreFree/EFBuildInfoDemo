//
//  ViewController.swift
//  BuildInfoDemo
//
//  Created by EyreFree on 16/3/29.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //输出构建信息
        var bulidTime: String!
        var gitSha: String!
        if let buildConfigFilePath = NSBundle.mainBundle()
            .pathForResource("BuildConfig", ofType: "plist") {
            if let dict = NSDictionary(contentsOfFile: buildConfigFilePath) {
                bulidTime = dict["BUILD_TIME"] as? String ?? "未知"
                gitSha = dict["GIT_SHA"] as? String ?? "未知"
            }
        }
        print("BUILD_TIME: \(bulidTime)")
        print("GIT_SHA: \(gitSha)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

