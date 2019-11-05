//
//  YouTubeRequestBuilder.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

struct YouTubeRequestBuilder {

    static func trends() -> Single<[Video]> {
        return YouTubeService.request(for: .trends)
            .request()
            .mapTo(YouTubeService.TrendsResponse.self, with: .default)
            .flatMap { trendsResponse -> Single<[Video]> in
                
                let trendItems = trendsResponse.items
                let channelIds = trendItems.compactMap { $0.snippet.channelId }
                
                return YouTubeService.request(for: .channels(ids: channelIds))
                    .request()
                    .mapTo(YouTubeService.ChannelResponse.self, with: .default)
                    .map { channelResponse -> [Video] in
                        
                        let channels = channelResponse.items.map(Channel.init)
                        
                        return trendItems.map { trendItem -> Video in
                        
                            let channel = channels.first(where: { $0.id == trendItem.snippet.channelId }) ?? .unknown
                            return Video(itemInfo: trendItem, channel: channel)
                        }
                    }
            }
        
    }
}
