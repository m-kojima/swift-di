//
//  AppRepository.swift
//  StudyIosDev
//
//  Created by minoru_kojima on 2017/08/25.
//  Copyright © 2017年 Cybozu, Inc. All rights reserved.
//

import UIKit

protocol AppRepository: UseConnectionConfigure {
    func method()
}

protocol UseAppRepository {
    var appRepository: AppRepository { get }
}

extension AppRepository {
    func method() {
    }
}

class AppRepositoryImpl: AppRepository {
    let connectionConfigure: ConnectionConfigure
    
    init(baseUrl: String, host: String, token: String) {
        self.connectionConfigure = ConnectionConfigureImpl(baseUrl: baseUrl, host: host, token: token)
    }
}
