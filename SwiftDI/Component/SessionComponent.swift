//
//  SessionComponent.swift
//  StudyIosDev
//
//  Created by mnr-kjm on 2017/08/27.
//  Copyright © 2017年 Cybozu, Inc. All rights reserved.
//

import UIKit

class SessionComponent {
    class ConnectionConfigureImpl: ConnectionConfigure {
        let baseUrl: String
        let host: String
        let token: String
        
        init(baseUrl: String, host: String, token: String) {
            self.baseUrl = baseUrl
            self.host = host
            self.token = token
        }
    }
    
    class AppRepositoryImpl: AppRepository {
        let connectionConfigure: ConnectionConfigure
        
        init(connectionConfigure: ConnectionConfigure) {
            self.connectionConfigure = connectionConfigure
        }
    }

    let connectionConfigure: ConnectionConfigure
    let appRepository: AppRepository
    
    init(baseUrl: String, host: String, token: String) {
        connectionConfigure = ConnectionConfigureImpl(baseUrl: baseUrl, host: host, token: token)
        appRepository = AppRepositoryImpl(connectionConfigure: connectionConfigure)
    }
    
}
