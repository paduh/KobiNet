//
//  NetworkRouter.swift
//  KobiNet
//
//  Created by Perfect Aduh on 22/06/2019.
//  Copyright © 2019 Perfect Aduh. All rights reserved.
//

import Foundation


protocol NetworkRouter {
    
    associatedtype EndPoint: EndPointype
    associatedtype T: Codable
    
    typealias NetworkRouterCompletion = ((_ data: T?,_ error: String?)->())
    
    func request(route: EndPoint, logContent: Bool, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
