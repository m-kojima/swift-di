//
//  AppList.swift
//  StudyIosDev
//
//  Created by minoru_kojima on 2017/08/25.
//  Copyright © 2017年 Cybozu, Inc. All rights reserved.
//

import UIKit

protocol AppList: UseAppRepository {
    var appId: Int { get }
    
    func method()
}

protocol UseAppList {
    var appList: AppList { get }
}

extension AppList {
    func method() {

    }
}

class AppListImpl: AppList {
    var appRepository: AppRepository
    let appId: Int
    
    init(appId: Int, baseUrl: String, host: String, token: String) {
        self.appRepository = AppRepositoryImpl(baseUrl: baseUrl, host: host, token: token)
        self.appId = appId
    }
}
