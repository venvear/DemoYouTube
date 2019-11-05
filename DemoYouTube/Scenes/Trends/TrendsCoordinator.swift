//
//  ListCoordinator.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

class TrendsCoordinator: BaseCoordinator {
    
    func openVideo(_ video: Video) {
        let scene = App.shared.factory.videoDetail(video)
        present(scene)
    }
    
    func openChannel(_ channel: Channel) {
        
    }
    
}
