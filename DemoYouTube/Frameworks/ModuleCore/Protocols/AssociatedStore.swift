//
//  AssociatedStore.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import ObjectiveC

public protocol AssociatedStore {}

public extension AssociatedStore {
    func associatedObject<T>(forKey key: UnsafeRawPointer) -> T? {
        return objc_getAssociatedObject(self, key) as? T
    }
    
    func associatedObject<T>(forKey key: UnsafeRawPointer, default: @autoclosure () -> T) -> T {
        if let object: T = self.associatedObject(forKey: key) {
            return object
        }
        let object = `default`()
        self.setAssociatedObject(object, forKey: key)
        return object
    }
    
    func setAssociatedObject<T>(_ object: T?, forKey key: UnsafeRawPointer) {
        objc_setAssociatedObject(self, key, object, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
}
