//
//  EndPointtype.swift
//  KobiNet
//
//  Created by Perfect Aduh on 22/06/2019.
//  Copyright © 2019 Perfect Aduh. All rights reserved.
//

import Foundation

protocol EndPointype {
    
    var baseUrl: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
