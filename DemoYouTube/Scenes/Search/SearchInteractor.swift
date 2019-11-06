//
//  SearchInteractor.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

class SearchInteractor {

    var nextPageToken: String? = nil
    
    func searchVideos(query: String) -> Single<[Video]> {
        return YouTubeRequestBuilder.search(query: query)
            .map { [weak self] trendsData -> [Video] in
                
                self?.nextPageToken = trendsData.nextPageToken
                return trendsData.videos
            }
    }

    func searchMoreVideos(query: String) -> Single<[Video]> {
        return YouTubeRequestBuilder.search(query: query, nextPageToken: nextPageToken)
            .map { [weak self] trendsData -> [Video] in
                
                self?.nextPageToken = trendsData.nextPageToken
                return trendsData.videos
            }
    }

}

