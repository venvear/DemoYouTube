//
//  YouTubeService+Response.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

extension YouTubeService {
     
    struct TrendsResponse: Decodable {
        var nextPageToken: String?
        var pageInfo: PageInfo
        let items: [ItemInfo]
    }
        
    struct PageInfo: Decodable {
        let totalResults: Int
        let resultsPerPage: Int
    }
    
    struct ItemInfo: Decodable {
        let kind: String
        let id: String
        let snippet: Snippet
        let statistics: Statistics
        let brandingSettings: BrandingSettings?                 // for channel
    }
    
    struct Snippet: Decodable {
        let publishedAt: String
        let title: String
        let description: String
        let thumbnails: ThumbnailList
        let channelId: String?
        let channelTitle: String?
        
        struct ThumbnailList: Decodable {
            var medium: Thumbnail?
            var high: Thumbnail?
            var standard: Thumbnail?
            var maxres: Thumbnail?
            
            struct Thumbnail: Decodable {
                let url: String
                let width: Int?
                let height: Int?
            }
        }
    }

    struct Statistics: Decodable {
        var viewCount: String
        var likeCount: String?
        var dislikeCount: String?
        var favoriteCount: String?
        var commentCount: String?
        var subscriberCount: String?
        var videoCount: String?
        var hiddenSubscriberCount: Bool?
    }

    struct BrandingSettings: Decodable {
        let image: BrandImage?
        
        struct BrandImage: Decodable {
            var bannerMobileImageUrl: String?
        }
    }
    
}


extension Video {
    init(itemInfo: YouTubeService.ItemInfo) {
        
        self.id = itemInfo.id
        self.title = itemInfo.snippet.title
        self.description = itemInfo.snippet.description
        
        let channel = Channel(id: itemInfo.snippet.channelId ?? "",
                              title: itemInfo.snippet.channelTitle ?? "")
        self.channel = channel
        self.statistics = Video.Statistics(statisticsInfo: itemInfo.statistics)
        self.thumbnails = Video.Thumbnails(thumbnails: itemInfo.snippet.thumbnails)
    }
}

extension Video.Statistics {
    init(statisticsInfo: YouTubeService.Statistics) {
        self.likes = statisticsInfo.likeCount ?? ""
        self.dislikes = statisticsInfo.dislikeCount ?? ""
        self.views = statisticsInfo.viewCount
        self.comments = statisticsInfo.commentCount ?? ""
    }
}

extension Video.Thumbnails {
    init(thumbnails: YouTubeService.Snippet.ThumbnailList) {
        self.max = thumbnails.maxres?.url ?? ""
        self.standard = thumbnails.standard?.url ?? ""
        self.medium = thumbnails.medium?.url ?? ""
    }
}
