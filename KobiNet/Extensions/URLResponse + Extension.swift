//
//  URLResponse + Extension.swift
//  KobiNet
//
//  Created by Perfect Aduh on 22/06/2019.
//  Copyright © 2019 Perfect Aduh. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
    
    func handleNetworkResponse() -> Result<String>{
        switch self.statusCode {
        case 200...299: return .success
        case 401...500: return .failure(NetworkResponse.authenticationError.rawValue)
        case 501...599: return .failure(NetworkResponse.badRequest.rawValue)
        case 600: return .failure(NetworkResponse.outdated.rawValue)
        case 1001: return .failure(NetworkResponse.noNetworkConnection.rawValue)
        case 999: return .failure(NetworkResponse.noNetworkConnection.rawValue)
        default: return .failure(NetworkResponse.failed.rawValue)
        }
    }
}
