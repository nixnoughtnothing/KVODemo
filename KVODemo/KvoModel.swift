//
//  KvoModel.swift
//  KVODemo
//
//  Created by RyohTsukahara on 11/29/15.
//  Copyright © 2015 test. All rights reserved.
//

import UIKit

class KvoModel: NSObject {
    
    // MARK: - シングルトン -
    class var sharedInstance : KvoModel{
        struct Singleton {
            static let instance = KvoModel()
        }
        return Singleton.instance
    }
    
    dynamic var myDate = NSDate()
    
    func updateDate(){
        self.myDate = NSDate()
    }
}


