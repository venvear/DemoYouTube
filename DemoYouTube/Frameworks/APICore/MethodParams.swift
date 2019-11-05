//
//  MethodParams.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

public struct MethodParams {
    public private(set) var bodyParams: [String: Any]
    public private(set) var urlParams: [String: Any]
    
    public init(inUrl: [String: Any] = [:], inBody: [String: Any] = [:]) {
        self.bodyParams = inBody
        self.urlParams = inUrl
    }
    
    public mutating func body<T: Any>(_ key: String, _ value: T) {
        bodyParams[key] = value
    }
    
    public mutating func url<T: Any>(_ key: String, _ value: T) {
        urlParams[key] = value
    }
}
