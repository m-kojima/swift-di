//
//  Root.swift
//  StudyIosDev
//
//  Created by mnr-kjm on 2017/08/27.
//  Copyright © 2017年 Cybozu, Inc. All rights reserved.
//

import UIKit

protocol Root {
    var appDelegate: AppDelegate { get }

    func method()
}

protocol UseRoot {
    var root: Root { get }
}

extension Root {    
    func method() {
        
    }
}

class RootImpl: Root {
    let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
}
