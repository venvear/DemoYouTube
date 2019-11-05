//
//  SelfContaner.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import ObjectiveC

public protocol SelfContaner: class, AssociatedStore {
    static var instanceOrInit: Self { get }
    static func release()
    init()
}

private var instanceKey = "instanceKey"

public extension SelfContaner {
    static var shared: Self { return instanceOrInit }
    
    static var instance: Self? { return objc_getAssociatedObject(self, &instanceKey) as? Self  }
    
    static var instanceOrInit: Self {
        if let instance = instance {
            return instance
        }
        
        let object = Self()
        objc_setAssociatedObject(self, &instanceKey, object, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        return object
    }
    
    static func release() {
        guard let instance = instance else { return }
        objc_removeAssociatedObjects(instance)
    }
}
