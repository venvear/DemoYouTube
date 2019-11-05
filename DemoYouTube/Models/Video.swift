//
//  Video.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Foundation

struct Video {
    let id: String
    let title: String
    let description: String
    let channel: Channel
    let statistics: Video.Statistics
    let thumbnails: Video.Thumbnails
}

extension Video {
    struct Statistics {
        let likes: String
        let dislikes: String
        let views: String
        let comments: String
    }
}

extension Video {
    struct Thumbnails {
        let max: String
        let standard: String
        let medium: String
    }
}
