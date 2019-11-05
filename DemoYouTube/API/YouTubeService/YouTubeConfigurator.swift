//
//  YouTubeConfigurator.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Moya
import RxSwift

public final class YouTubeConfigurator: APIServiceConfiguratorType  {
    public var sessionManager = SessionManager.instance
    public let bodyEncoding: MethodBodyEncoding = { $0 == .get ? URLEncoding.default : JSONEncoding.default }
    public let baseHeaders: [String: String]? = nil
    public weak var delegate: APIServiceConfiguratorDelegate?

    public var plugins: [Plugin] = []
    public var baseUrl: URL
    public let apiKey: String
    
    public init(plugins: [Plugin] = [], url: String, apiKey: String) {
        self.plugins = plugins
        self.baseUrl = URL(string: url)!
        self.apiKey = apiKey
    }
    
    public func isUnauthorized(response: Response) -> Bool {
        return false
    }
}
