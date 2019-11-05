//
//  Channel.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Foundation

struct Channel {
    let id: String
    let title: String
    let logo: String
    let statistics: Channel.Statistics
    
    static let unknown = Channel(id: "", title: "", logo: "", statistics: .init(subscribers: ""))
}

extension Channel {
    struct Statistics {
        let subscribers: String
    }
}
