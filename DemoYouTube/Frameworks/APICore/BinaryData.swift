//
//  BinaryData.swift
//  DemoYouTube
//
//  Created by Andrey Raevnev on 05.11.2019.
//  Copyright © 2019 Andrey Raevnev. All rights reserved.
//

import Foundation

public enum BinaryData {
    case jpeg(Data)
    case custom(Data, mimeType: String)
    
    public var mimeType: String {
        switch self {
        case .jpeg: return "image/jpeg"
        case .custom(_, let str): return str
        }
    }
    
    public var data: Data {
        switch self {
        case .jpeg(let data): return data
        case .custom(let data, _): return data
        }
    }
}
