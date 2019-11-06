//
//  VideoDetailCoordinator.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift
import SafariServices

class VideoDetailCoordinator: BaseCoordinator {
    
    func openChannel(_ channel: Channel) {
        guard let scene = App.shared.factory.channelDetail(channel) else { return }
        present(scene, type: .modally)
    }
    
}
