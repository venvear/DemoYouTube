//
//  App.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Foundation

final class App: ModuleType {

    var factory: AppFactoryType

    func set(factory: AppFactoryType) {
        self.factory = factory
    }

    init() {
        factory = DefaultFactory()
    }

}
