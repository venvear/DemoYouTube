//
//  AuthTokenProvider.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

public protocol AuthTokenProvider: class {
    var token: AuthToken? { get }
}
