//
//  DetailView.Data+Video.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

extension DetailView.Data {
    
    init(video: Video) {
        self.init(imageUrl: URL(string: video.channel.logo),
                  title: video.title,
                  subtitle: "\(video.channel.title) • \(video.statistics.views) просмотров")
    }
}
