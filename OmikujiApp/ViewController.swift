//
//  ViewController.swift
//  OmikujiApp
//
//  Created by Sho Nozaki on 2018/03/21.
//  Copyright © 2018年 Sho Nozaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        // おみくじの配列
        let results = ["大吉", "吉", "中吉", "末吉", "凶", "大凶"]
        // 0 ~ n の乱数生成 ⇒ arc4random_uniform(n + 1) ※引数は UInt32 型
        let random = arc4random_uniform(UInt32(results.count))
        // resultsのrandom番目を myLabel に代入
        self.myLabel.text = results[Int(random)]
    }
    
    // View が表示されたあとの処理
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 枠線を myLabel に適用
        myLabel.layer.borderColor = UIColor.black.cgColor // 枠線の色を指定
        myLabel.layer.borderWidth = 5 // 枠線の幅を指定
        myLabel.layer.cornerRadius = 50 // 枠線の角の丸みを指定
        myLabel.layer.masksToBounds = true // 枠線の外部分の切り取り
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2 // 正円の指定
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

