//
//  DetailView.Data+Channel.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import UIKit

extension DetailView.Data {
    
    init(channel: Channel) {
        self.init(imageUrl: URL(string: channel.logo),
                  title: channel.title,
                  subtitle: "\(channel.statistics.subscribers) подписчиков")
    }
}
