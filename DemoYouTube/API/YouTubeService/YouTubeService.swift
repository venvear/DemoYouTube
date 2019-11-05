//
//  YouTubeService.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Moya

public final class YouTubeService: APIService<YouTubeService.Methods, YouTubeConfigurator>  {
    
    override public var authStrategy: AuthStrategy { return .authorizationHeader }
    
    public enum Methods {
        case trends
        case channels(ids: [String])
    }
}

extension YouTubeService.Methods: APIServiceMethod {
    
    public var methodPath: MethodPath {
        switch self {
        case .trends: return (.get, "videos")
        case .channels: return (.get, "channels")
        }
    }
    
    public var params: MethodParams {
        var url: [String: Any] = [:]
        let body: [String: Any] = [:]
        
        url["key"] = YouTubeService.configurator?.apiKey ?? ""
        url["regionCode"] = "RU"
        url["maxResults"] = 20
        
        switch self {
        case .trends:
            url["type"] = "video"
            url["part"] = "snippet,contentDetails,statistics"
            url["chart"] = "mostPopular"
        case .channels(let ids):
            url["part"] = "snippet,contentDetails,statistics,brandingSettings"
            url["id"] = ids.joined(separator: ",")
        }
        
        return MethodParams(inUrl: url, inBody: body)
    }
}