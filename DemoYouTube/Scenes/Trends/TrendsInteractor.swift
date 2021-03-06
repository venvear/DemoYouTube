//
//  ListInteractor.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

class TrendsInteractor {

    var nextPageToken: String? = nil
    
    func loadVideos() -> Single<[Video]> {
        return YouTubeRequestBuilder.trends()
            .map { [weak self] trendsData -> [Video] in
                
                self?.nextPageToken = trendsData.nextPageToken
                return trendsData.videos
            }
    }

    func loadMoreVideos() -> Single<[Video]> {
        return YouTubeRequestBuilder.trends(nextPageToken: nextPageToken)
            .map { [weak self] trendsData -> [Video] in
                
                self?.nextPageToken = trendsData.nextPageToken
                return trendsData.videos
            }
    }

}







