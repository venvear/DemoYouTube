//
//  SearchCoordinator.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 06.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

class SearchCoordinator: BaseCoordinator {
    
    func openVideo(_ video: Video) {
        let scene = App.shared.factory.videoDetail(video)
        present(scene, type: .modally)
    }
    
}
