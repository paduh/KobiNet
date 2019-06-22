//
//  JSONParameterEncoder.swift
//  KobiNet
//
//  Created by Perfect Aduh on 22/06/2019.
//  Copyright © 2019 Perfect Aduh. All rights reserved.
//

import Foundation


public struct JSONParameterEncoder: ParameterEncoder {
    
    
    public func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
        }catch {
            throw NetworkError.encodingFailed
        }
    }
}
