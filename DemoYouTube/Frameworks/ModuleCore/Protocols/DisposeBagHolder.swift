//
//  DisposeBagHolder.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import RxSwift

public protocol DisposeBagHolder {
    var disposeBag: DisposeBag { get }
}
