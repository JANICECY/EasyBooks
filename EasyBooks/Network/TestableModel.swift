//
//  TestableModel.swift
//  DynamicMarket
//
//  Created by Yiyao Zhang on 2020-04-18.
//  Copyright © 2020 Yiyao Zhang. All rights reserved.
//

import SwiftUI
import Combine

class TestPack: Codable, DownloadedPackage {
    var data: [Testable] = []
    var success: String = "failed"
    var isSuccess: Bool {
        success == "success"
    }
}

struct Testable: Codable {
    var id: String
    var message: String
    var time: String
    
    var localizedTime: Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH-mm-ss"
        return formatter.date(from: time)!
    }
}

final class TestableModel: ObservableObject {
    @Published var result = TestPack()
    @Published var id: Int
    
    init(_ id: Int) {
        self.id = id
    }
    
    func downloadTestable(){
        let network = Network()
        let parameters: [String: Any] = ["id": id]
        let request = network.request(parameters: parameters, url: URLServices.testConnect)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data,
                let response = response as? HTTPURLResponse,
                error == nil else {   // check for fundamental networking error
                    print("error", error ?? "Unknown error")
                    return
            }
            guard (200 ... 299) ~= response.statusCode else { //check for http errors
                print("statusCode should be 2xx, but is \(response.statusCode)")
                print("response = \(response)")
                return
            }
            // data will be available for other models that implements the block
            let decodedData = try! JSONDecoder().decode(TestPack.self, from: data)
            DispatchQueue.main.async {
                self.result = decodedData as TestPack
            }
        }
        task.resume()
    }
}
