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
            .map { $0.items.map(Video.init) }
    }
}
