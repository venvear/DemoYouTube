//
//  APIServiceMethod.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Moya
import Alamofire

public typealias MockKeyType = CaseIterable & RawRepresentable & Hashable

public protocol APIServiceMethod: TargetType {
    associatedtype MockKey: MockKeyType
    
    var methodPath: MethodPath { get }
    var params: MethodParams { get }
    var mockKey: MockKey? { get }
    var multipart: BinaryData? { get }
    var overrideBodyEncoding: BodyEncoding? { get }
    var overrideBaseURL: URL? { get }
}

public extension APIServiceMethod {
    var path: String { return methodPath.path }
    var params: MethodParams { return  MethodParams() }
    var method: HTTPMethod { return methodPath.httpMethod }
    var sampleData: Data { return Data() }
    var headers: [String : String]? { return nil }
    var baseURL: URL { return URL(string: "")! }
    var mockKey: MockKey? { return nil }
    var multipart: BinaryData?  { return nil }
    var overrideBodyEncoding: BodyEncoding? { return nil }
    var overrideBaseURL: URL? { return nil }
    var task: Task { return .requestPlain }
}



