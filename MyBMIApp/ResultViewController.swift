//
//  ResultViewController.swift
//  MyBMIApp
//
//  Created by 七田　人比古 on 2014/12/10.
//  Copyright (c) 2014年 Shichida Hitohiko. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var myHight: String = ""
    var myWeight: String = ""
    

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var IdealWeightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var Hight: Double = (myHight as NSString).doubleValue / 100.0
        var Weight: Double = (myWeight as NSString).doubleValue
        var myBMI: Double = Weight / (Hight * Hight)
        var standardWeight: Double = (Hight * Hight) * 22
        var myBodyMassIndex: Double = ((Weight - standardWeight) / standardWeight) * 100
        
        switch myBMI {
        case 0..<18:
            self.msgLabel.text = "あなたは痩せすぎです！"
        case 18..<25:
            self.msgLabel.text = "今の体を保ちましょう。"
        case 25..<30:
            self.msgLabel.text = "すこし運動をしましょう。"
        case 30..<35:
            self.msgLabel.text = "ダイエット...したら？"
        case 35..<40:
            self.msgLabel.text = "とばない豚はただの豚だ。"
        case 40..<100:
            self.msgLabel.text = "死にますよ。"
        default:
            self.msgLabel.text = "あなたは、人間ではないようです。"
        }
        
        self.BMILabel.text = "あなたの肥満度は" + NSString(format: "%.f", myBodyMassIndex) + "%"
        self.IdealWeightLabel.text = "理想体重 " + NSString(format: "%.f", standardWeight) + "kg"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
