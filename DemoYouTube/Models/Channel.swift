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
    
    static let unknown = Channel(id: "", title: "", logo: "")
}
