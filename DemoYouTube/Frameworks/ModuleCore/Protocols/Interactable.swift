//
//  Interactable.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

public protocol Interactable: class, AssociatedStore  {
    associatedtype Interactor
    var interactor: Interactor { get }
}

private var interactorKey = "interactor"

extension Interactable {
    
    public var interactor: Interactor {
        guard let interactor: Interactor = self.associatedObject(forKey: &interactorKey) else {
            fatalError("Интерактор не установлен \(self)")
        }
        return interactor
    }
    
    func set(interactor: Interactor) {
        self.setAssociatedObject(interactor, forKey: &interactorKey)
    }
}
