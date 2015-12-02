//
//  ViewController.swift
//  KVODemo
//
//  Created by RyohTsukahara on 11/29/15.
//  Copyright © 2015 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()

    // MARK: - LifeCycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.frame.size = CGSize(width: 220, height: 50)
        label.center = self.view.center
        self.view.addSubview(label)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // modelの日付をtext代入
        label.text = KvoModel.sharedInstance.myDate.description
        
        // モデルで定義されたプロパティ "myDate"の値を監視する(値の変更があったときに通知されるようにする）
        KvoModel.sharedInstance.addObserver(self, forKeyPath: "myDate", options: .New, context: nil)
    }
    
    override func viewDidDisappear(animated: Bool) {

        KvoModel.sharedInstance.removeObserver(self, forKeyPath: "myDate")
    }
    
    // MARK: - KVO -
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event)
        print("Touched")
        print("Old mydate -> \(KvoModel.sharedInstance.myDate)")
        
        // 新しい現在時刻をセット
        KvoModel.sharedInstance.updateDate()
    }
    
    // touch時にモデルの値が変わったらコールされる
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        if keyPath == "myDate" {
            print("New myDate -> \(KvoModel.sharedInstance.myDate))")
            
            // 新しい日付をviewに反映
            label.text = KvoModel.sharedInstance.myDate.description
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

