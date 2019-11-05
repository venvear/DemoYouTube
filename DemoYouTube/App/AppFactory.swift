//
//  AppFactory.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Foundation

final class DefaultFactory: AppFactoryType { }

public protocol AppFactoryType: class {
    func list() -> Scene
}

extension AppFactoryType {

    func list() -> Scene {
        let scene = ListVC()
//        scene.hidesBottomBarWhenPushed = true
        let reactor = ListReactor()
        reactor.inject(interactor: ListInteractor(), coordinator: ListCoordinator(scene: scene))
        scene.inject(reactor)
        return scene
    }
    
}
