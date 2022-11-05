//
//  ViewController.swift
//  Dice
//
//  Created by 刘军 on 2021/10/1.
//

import UIKit

class ViewController: UIViewController {
   
    //复合数据类型-数组
    let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var index1: Int = 0
    var index2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //用户按下摇一摇按钮之后执行
    @IBAction func roll(_ sender: Any) { updateDiceImages() }
    
    //页面加载的时候执行
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }
    
    //抽离出来的函数
    func updateDiceImages(){
        index1 = Int.random(in: 0...5)
        index2 = Int.random(in: 0...5)
        
        //下标超过范围,如diceArr[6],会出现错误: 数组越界/index out of range
        diceImageView1.image = UIImage(named: diceArr[index1])
        diceImageView2.image = UIImage(named: diceArr[index2])
    }

    //用户摇晃手机之后执行
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

