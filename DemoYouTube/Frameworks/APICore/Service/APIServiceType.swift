//
//  APIServiceType.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Moya

public protocol APIServiceType: class {
    associatedtype Method: APIServiceMethod
    associatedtype Configurator: APIServiceConfiguratorType
    
    var useMocksIfSetted: Bool { get }
    var provider: MoyaProvider<Method> { get }
    var urlServicePathComponent: String { get }
    var serviceHeaders: [String: String]? { get }
    var authStrategy: AuthStrategy { get }
    
    init()
}

public extension APIServiceType {
    // прежде чем вызывать данный сервис убедитесь что APICoreObjectContainer существует
    static var shared: Self {  return ConfiguratorContainer.instanceLazyInit.resolveOrRegisterService()  }
    static var configurator: Configurator? { return ConfiguratorContainer.instanceLazyInit.resolveServiceConfigurator(for: Self.self) }
}

