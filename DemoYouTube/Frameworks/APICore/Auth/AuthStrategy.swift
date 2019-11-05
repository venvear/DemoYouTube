//
//  AuthStrategy.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

public enum AuthStrategy {
    case withoutAuth
    case addTokenToHeader(headerName: String)
    case addTokenToUrl(urlParamName: String)
    case authorizationHeader
}
