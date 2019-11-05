//
//  SceneView+.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import ReactorKit
import RxSwift
import RxCocoa
 
public extension SceneView {
    var rctr: Reactor {
        guard let vm = reactor else { fatalError() }
        return vm
    }
    
    func inject(_ sr: Reactor) {
        reactor = sr
    }
    
    func fire(action: Reactor.Action) {
        reactor?.action.onNext(action)
    }
 
    func subscribeNext<T>(_ observer: Observable<T>, with classFunc: @escaping (Self) -> (T) -> Swift.Void) {
        observer.subscribeNext(self, with: classFunc, bag: disposeBag)
    }
    
    func subscribeNext<T>(_ observer: Observable<T>, do classFunc: @escaping (Self) -> () -> Swift.Void) {
        observer.subscribeNext(self, do: classFunc, bag: disposeBag)
    }
}

