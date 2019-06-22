//
//  NetworkResponse.swift
//  KobiNet
//
//  Created by user on 22/06/2019.
//  Copyright © 2019 Perfect Aduh. All rights reserved.
//

import Foundation


enum NetworkResponse:String {
    case success
    case authenticationError = "You need to be authenticated first."
    case badRequest = "Bad request"
    case outdated = "The url you requested is outdated."
    case failed = "Network request failed."
    case noData = "Response returned with no data to decode."
    case unableToDecode = "We could not decode the response."
    case noNetworkConnection = "Please check your internet connection and try againn"
    
}

enum Result<String>{
    case success
    case failure(String)
}
