//
//  ListInteractor.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

class ListInteractor {

    func videos() -> Single<[Video]> {
        return YouTubeRequestBuilder.trends()
    }
    
}







