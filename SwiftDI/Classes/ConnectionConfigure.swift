//
//  ConnectionConfigure.swift
//  StudyIosDev
//
//  Created by minoru_kojima on 2017/08/25.
//  Copyright © 2017年 Cybozu, Inc. All rights reserved.
//

import UIKit

protocol ConnectionConfigure {
    var baseUrl: String { get }
    var host: String { get }
    var token: String { get }
}

protocol UseConnectionConfigure {
    var connectionConfigure: ConnectionConfigure { get }
}

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
