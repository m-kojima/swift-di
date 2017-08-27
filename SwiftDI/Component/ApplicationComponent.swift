//
//  ApplicationComponent.swift
//  StudyIosDev
//
//  Created by minoru_kojima on 2017/08/25.
//  Copyright © 2017年 Cybozu, Inc. All rights reserved.
//

import UIKit

class ApplicationComponent {
    class RootImpl: Root {
        var appDelegate: AppDelegate = UIApplication.shared.delegate! as! AppDelegate
    }
    
    let root: Root
    init() {
        self.root = RootImpl()
    }
}
