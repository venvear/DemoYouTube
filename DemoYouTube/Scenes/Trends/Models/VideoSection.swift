//
//  VideoSection.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxDataSources

struct VideoSection {
    var items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
    
    mutating func addItems(items: [Item]) {
        self.items += items
    }
}

extension VideoSection: SectionModelType {
    typealias Item = Video
    
    init(original: VideoSection, items: [Item]) {
        self = original
        self.items = items
    }
}
