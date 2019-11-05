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
    
    public init(plugins: [Plugin] = [], baseUrl: URL) {
        self.plugins = plugins
        self.baseUrl = baseUrl
    }
    
    public func isUnauthorized(response: Response) -> Bool {
        return false
    }
}
