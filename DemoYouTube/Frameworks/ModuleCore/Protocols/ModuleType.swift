//
//  ModuleType.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

public protocol ModuleType: SelfContaner {
    associatedtype Factory
    
    var factory: Factory { get }
 
    func set(factory: Factory)
}
