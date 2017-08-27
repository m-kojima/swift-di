//
//  RecordList.swift
//  StudyIosDev
//
//  Created by minoru_kojima on 2017/08/25.
//  Copyright © 2017年 Cybozu, Inc. All rights reserved.
//

import UIKit

protocol RecordList: UseAppList, UseAppRepository, UseRoot {
    var recordId: Int { get }
    var flag: Int { get set }
    
    func method()
}

protocol UseRecordList {
    var recordList: RecordList { get }
}

extension RecordList {
    func method() {
        
    }
}

class RecordListImpl: RecordList {
    let root: Root = RootImpl()
    var appRepository: AppRepository
    var appList: AppList
    let recordId: Int
    var flag: Int = 0
    
    init(appId: Int, recordId: Int, baseUrl: String, host: String, token: String) {
        self.appRepository = AppRepositoryImpl(baseUrl: baseUrl, host: host, token: token)
        self.appList = AppListImpl(appId: appId, baseUrl: baseUrl, host: host, token: token)
        self.recordId = recordId
    }
}
