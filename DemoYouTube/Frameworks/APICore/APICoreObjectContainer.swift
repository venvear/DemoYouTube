//
//  APICoreObjectContainer.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Alamofire
import RxSwift

public typealias APICoreManager = APICoreObjectContainer
public typealias InternetConnectionStatus = NetworkReachabilityManager.NetworkReachabilityStatus
public final class APICoreObjectContainer {
 
    //MARK: Instance
    private init() { }
    
    private static var instance: APICoreObjectContainer?
    
    public static var shared: APICoreObjectContainer { return instanceLazyInit }
    
    public static var instanceLazyInit: APICoreObjectContainer {
        if let instance = instance {
            return instance
        }
        
        let newInst = APICoreObjectContainer()
        instance = newInst
        return newInst
    }
    
    public static func releaseInstance() {
        instance = nil
    }
    
    
    //MARK: Internet connection
    private lazy var internetConnectionPublisher: PublishSubject<InternetConnectionStatus> = {
        let publisher = PublishSubject<InternetConnectionStatus>()
        networkReachabilityManager?.listener = { status in publisher.onNext(status) }
        networkReachabilityManager?.startListening()
        return publisher
    }()
    
    public lazy var internetConnection: Observable<InternetConnectionStatus> = {
        return internetConnectionPublisher.share().asObservable()
    }()
    
    //MARK: HTTP Errors
    let requestHttpErrorsPublisher =  PublishSubject<Error>()
    
    public lazy var requestHttpErrors: Observable<Error> = {
           return requestHttpErrorsPublisher.share().asObservable()
    }()
    
    
    //MARK: Container for objects
    private var configurators: [APIServiceConfiguratorType] = []
    private var serviceConfigurators: [String : APIServiceConfiguratorType] = [:]
    private var services: [String: Any] = [:]
    private let networkReachabilityManager = NetworkReachabilityManager()
    
    
    //MARK: Public
    public func register(_ configurator: APIServiceConfiguratorType) {
       configurators.append(configurator)
    }
    
    public func register<S: APIServiceType>(configurator: APIServiceConfiguratorType, for service: S.Type) {
        let key = "\(S.Method.self)"
        serviceConfigurators[key] = configurator
    }
    
    
    public func resolveServiceConfigurator<C:APIServiceConfiguratorType>() -> C? {
        guard let configurator = configurators.first(where: { $0 is C }) as? C else {
            fatalError("\(C.self) такой конфигуратор не зарегистрирован в APICoreObjectContainer")
            return nil
        }
        
        return configurator
    }
    
    
    //MARK: Internal
    func resolveServiceConfigurator<C: APIServiceConfiguratorType, S: APIServiceType>(for service: S.Type) -> C? {
        let key = "\(S.Method.self)"
        
        guard let configurator = serviceConfigurators[key] as? C else {
            return resolveServiceConfigurator()
        }
        
        return configurator
    }
    
    
    func resolveOrRegisterService<S: APIServiceType>() -> S {
        let key = "\(S.self)"
        
        if let service = services[key] {
            guard let service = service as? S else {
                fatalError("Сервис имеет некорректный тип")
            }
            
            return service
        }
        
        let service = S.init()
        services[key] = service
        return service
    }
}
