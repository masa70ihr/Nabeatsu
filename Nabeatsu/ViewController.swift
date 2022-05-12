//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//


//3の倍数または3の付く数値でも5の倍数または5の付く数値ならアホにならない


import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0 {
            return true
        }
        
//        // 問題2: 1の位が3かどうか調べる
//        if number % 10 == 3 {
//            return true
//        }
//        // 問題3: 10の位が3かどうか調べる
//        if number / 10 % 10 == 3 {
//            return true
//        }

        // 問題4: 3がつくかどうか調べる
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        var checkNum: Int = number  // 3がつくか判断するための変数を宣言
        
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                return true  // アホになる
            } else {
                checkNum = checkNum / 10
            }
        }

        
        return false
    }
    
    // 5の倍数か、または5がつくかを判断する関数
    func x5() -> Bool {
        if number % 5 == 0 {
            return true
        }
        
        var check5: Int = number  // 3がつくか判断するための変数を宣言
        
        while check5 != 0 {
            if check5 % 10 == 5 {
                return true  // アホになる
            } else {
                check5 = check5 / 10
            }
        }
        return false
    }
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true && x5() == false {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clear() {
        number = 0
        countLabel.text = String(number)
        faceLabel.text = "(゜o゜)"
    }


}

