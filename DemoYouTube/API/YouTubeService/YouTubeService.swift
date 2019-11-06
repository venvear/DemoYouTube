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
        case trends(nextPageToken: String?)
        case search(query: String, nextPageToken: String?)
        case channels(ids: [String])
        case videos(ids: [String])
    }
}

extension YouTubeService.Methods: APIServiceMethod {
    
    public var methodPath: MethodPath {
        switch self {
        case .trends, .videos:  return (.get, "videos")
        case .search:           return (.get, "search")
        case .channels:         return (.get, "channels")
        }
    }
    
    public var params: MethodParams {
        var url: [String: Any] = [:]
        let body: [String: Any] = [:]
        
        url["key"] = YouTubeService.configurator?.apiKey ?? ""
        url["regionCode"] = "RU"
        url["maxResults"] = 20
        
        switch self {
        case .trends(let nextPageToken):
            url["type"] = "video"
            url["part"] = "snippet,contentDetails,statistics"
            url["chart"] = "mostPopular"
            
            if let nextPageToken = nextPageToken {
                url["pageToken"] = nextPageToken
            }
            
        case let .search(query, nextPageToken):
            url["type"] = "video"
            url["part"] = "snippet"
            url["q"] = query
            
            if let nextPageToken = nextPageToken {
                url["pageToken"] = nextPageToken
            }
        case .channels(let ids):
            url["part"] = "snippet,contentDetails,statistics,brandingSettings"
            url["id"] = ids.joined(separator: ",")
        case .videos(let ids):
            url["type"] = "video"
            url["part"] = "snippet,contentDetails,statistics"
            url["id"] = ids.joined(separator: ",")
        }
        
        return MethodParams(inUrl: url, inBody: body)
    }
}
