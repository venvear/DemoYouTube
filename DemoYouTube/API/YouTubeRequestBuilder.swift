//
//  YouTubeRequestBuilder.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

typealias PageData = (videos: [Video], nextPageToken: String?)

struct YouTubeRequestBuilder {

    static func trends(nextPageToken: String? = nil) -> Single<PageData> {
        return YouTubeService.request(for: .trends(nextPageToken: nextPageToken))
            .request()
            .mapTo(YouTubeService.TrendsResponse.self, with: .default)
            .flatMap { trendsResponse -> Single<PageData> in
                
                let trendItems = trendsResponse.items
                let channelIds = trendItems.compactMap { $0.snippet.channelId }
                
                return YouTubeService.request(for: .channels(ids: channelIds))
                    .request()
                    .mapTo(YouTubeService.ChannelResponse.self, with: .default)
                    .map { channelResponse -> PageData in
                        
                        let channels = channelResponse.items.map(Channel.init)
                        
                        let videos = trendItems.map { trendItem -> Video in
                            let channel = channels.first(where: { $0.id == trendItem.snippet.channelId }) ?? .unknown
                            return Video(itemInfo: trendItem, channel: channel)
                        }
                        
                        return PageData(videos: videos, nextPageToken: trendsResponse.nextPageToken)
                    }
            }
    }
    
    static func search(query: String, nextPageToken: String? = nil) -> Single<PageData> {
        return YouTubeService.request(for: .search(query: query, nextPageToken: nextPageToken))
            .request()
            .mapTo(YouTubeService.SearchResponse.self, with: .default)
            .flatMap { searchResponse -> Single<PageData> in
                
                let searchItems = searchResponse.items
                let channelIds = searchItems.compactMap { $0.snippet.channelId }
                let videoIds = searchItems.compactMap { $0.id.videoId }
                
                return YouTubeService.request(for: .channels(ids: channelIds))
                    .request()
                    .mapTo(YouTubeService.ChannelResponse.self, with: .default)
                    .map { $0.items.map(Channel.init) }
                    .flatMap { channels -> Single<PageData> in
                    
                        return YouTubeService.request(for: .videos(ids: videoIds))
                            .request()
                            .mapTo(YouTubeService.TrendsResponse.self, with: .default)
                            .map { trendsResponse -> PageData in
                                
                                let videos = trendsResponse.items.map { trendItem -> Video in
                                    let channel = channels.first(where: { $0.id == trendItem.snippet.channelId }) ?? .unknown
                                    return Video(itemInfo: trendItem, channel: channel)
                                }
                         
                                return PageData(videos: videos, nextPageToken: searchResponse.nextPageToken)
                            }
                    }
            }
    }
    
    
}
