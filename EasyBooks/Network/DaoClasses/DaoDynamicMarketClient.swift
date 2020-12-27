//
//  DaoDynamicMarketClient.swift
//  DynamicMarket
//
//  Created by Yiyao Zhang on 2020-04-26.
//  Copyright © 2020 Yiyao Zhang. All rights reserved.
//

import SwiftUI
import Combine

func request(queryItems: [URLQueryItem], url: String, decode procedure: @escaping (Data) -> Void) {
    let url = URL(string: url)!
    var components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
    
    components.queryItems = queryItems
    
    //let query = components.url!.query!
    let request = URLRequest(url: components.url!.absoluteURL)
    //request.httpMethod = "POST"
    //request.httpBody = Data(query.utf8)
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data,
            let response = response as? HTTPURLResponse,
            error == nil else {
            print("error", error ?? "Unknown error")
            return
        }

        guard (200 ... 299) ~= response.statusCode else {
            print("statusCode should be 2xx, but is \(response.statusCode)")
            print("response = \(response)")
            return
        }

        procedure(data)
    }

    task.resume()
}
