//
//  YouTubeService.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Moya

public final class YouTubeService: APIService<YouTubeService.Methods, YouTubeConfigurator>  {
    
    override public var authStrategy: AuthStrategy { return .authorizationHeader }
    
    public enum Methods {
        case getQrCode
    }
}

extension YouTubeService.Methods: APIServiceMethod {
    
    public var methodPath: MethodPath {
        switch self {
        case .getQrCode: return (.post, "getQrCode")
        }
    }
    
    public var params: MethodParams {
        var body: [String: Any] = [:]
        
        switch self {
        case .getQrCode:
            break
//            body = params.asDictionary
//
//            guard let merchantId = BRSService.configurator?.merchantId,
//                let account = BRSService.configurator?.account else { fatalError() }
//
//            body["merchantId"] = merchantId
//            body["account"] = account
        }
        
        return MethodParams(inBody: body)
    }
}

//MARK: Mocks
public extension YouTubeService.Methods {
    
    enum MockKey: String, MockKeyType {
        case getQrCode
    }
    
    var mockKey: MockKey? {
        switch self {
        case .getQrCode: return .getQrCode
        }
    }
}

extension YouTubeService.Methods.MockKey : MockSampleData {
    public var sampleData: String? {
        switch self {
        case .getQrCode: return
            """
            {
            "sourceId": "e6fa7fa2edd74c44a8a47b6309f9c8c8",
            "operationId": "20191003000000000000000000000002",
            "code": "0",
            "message": "ОК",
            "data": {
            "qrcId": "AD100044IPLODOVH93KAPI7J2UFAVBQE",
            "payload": "https://qr.nspk.ru/AD100044IPLODOVH93KAPI7J2UFAVBQE?type=02&bank=100000000014&sum=1000&cur=RUB&crc=79E0",
            "payloadBase64": "iVBORw0KGgoAAAANSUhEUgAAAGQAAABkAQAAAABYmaj5AAABUklEQVR42tXUMXLEIAwAQGjMF44Gf+1o7C/Yzdk08AXTwNegMW1K1Fghc7mZS0QeEFXsjEZoQMDwLT7Yv1Flt+G2CLdzKsCY0USM0JEJk7aLOGRPcX+oEf6QCdrlrjDcF3UfX/u9qzLpv+LV57sQ67KZtkaqqsNmeZXfVX7o2irP+RqhUNXHMJ+Ku8Q7EkkcY8QSO7rJXFzxQXc0Q5hrOwlBhUlg2ZU2mepSG/gIVXoqOMeLt/uynKquaWFzCcNGdc3RTgN3Dqgg4rn6cwsrVV0GpcYqn539kkg6l6BW19HobRuuQQAVpmW+eIkHp4LcKng7PTN/qj4ed32pYS0d8RjEvmirqSBmgz6j9x2dSmdfEhNU2HJPDabOVJWNxjImj5WqTTITkOQz85eMj6fYGdM9HcKVS9qtpzBNa3FJdoQeTh4t41Tthets2ogA1X/8wT4BQWy/gNa9vO0AAAAASUVORK5CYII=",
            "status": "CREATED"
            }
            }
            """
        }
    }
}
