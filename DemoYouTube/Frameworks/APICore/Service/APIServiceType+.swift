//
//  APIServiceType+.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Foundation

public extension APIServiceType {
    static func request(for method: Self.Method) -> RequestBuilder<Self> {
        return RequestBuilder(Self.self, method)
    }
}
