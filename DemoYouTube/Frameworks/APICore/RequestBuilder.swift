//
//  RequestBuilder.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Moya
import RxSwift

open class RequestBuilder<S: APIServiceType>  {
  
    private let method: S.Method
    
    public init(_ type: S.Type, _ method: S.Method) {
        self.method = method
    }
  
    private func request() -> Single<Response> {
        
        let notifyAboutError: (Error) -> Void = { APICoreManager.shared.requestHttpErrorsPublisher.onNext(extractNSError(from: $0)) }
        
        func req() -> Single<Response> {
            return S.shared.provider.rx
                .request(method, callbackQueue: DispatchQueue.global())
                .do(onError: notifyAboutError)
        }
        
        if let delegate = S.configurator?.delegate, let configurator = S.configurator {
            
            func statusUnauthorized(response: Response) -> Single<Response> {
                guard configurator.isUnauthorized(response: response) else { return .just(response) }
                return delegate.tryRestoreAccess(response: response).flatMap { req() }
            }
            return req().flatMap(statusUnauthorized)
        } else {
            return req()
        }
        
    }
    
}

fileprivate func extractNSError(from error: Error) -> NSError {
    if case MoyaError.underlying(let err, _) = error  {
        return err as NSError
    }
    return error as NSError
}

/// Ошибка парсинга данных
public struct DecodeError: Error {
    public let error: Error
    public let response: Response
    public let targetTypeDescription: Any
}

public extension Single where Element == Response {
    
    func mapTo<T:Decodable>(_ type: T.Type, on scheduler: ImmediateSchedulerType = MainScheduler.instance,
                            with decoder: JSONDecoder = .default) -> Single<T> {
        
        return self
            .asObservable()
            .map { response in
                do {
                    return try decoder.decode(T.self, from: response.data)
                } catch {
                    let decodErr = DecodeError(error: error, response: response, targetTypeDescription: T.self)
                    APICoreManager.shared.requestHttpErrorsPublisher.onNext(decodErr)
                    throw error
                }
        }
        .asSingle()
            .observeOn(scheduler)
    }
    
    
    func mapTo<T:Decodable>(on scheduler: ImmediateSchedulerType = MainScheduler.instance,
                            with decoder: JSONDecoder = .default) -> Single<T> {
        
        return self
            .asObservable()
            .map { response in
                do {
                    return try decoder.decode(T.self, from: response.data)
                } catch {
                    let decodErr = DecodeError(error: error, response: response, targetTypeDescription: T.self)
                    APICoreManager.shared.requestHttpErrorsPublisher.onNext(decodErr)
                    throw error
                }
            }
            .asSingle()
            .observeOn(scheduler)
    }
    
    func mapToVoid(on scheduler: ImmediateSchedulerType = MainScheduler.instance) -> Single<Void> {
        return self
            .asObservable()
            .map { response in return Void() }
            .asSingle()
            .observeOn(scheduler)
    }
    
}


