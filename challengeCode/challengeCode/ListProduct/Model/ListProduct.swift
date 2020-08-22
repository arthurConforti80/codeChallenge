//
//  ListProduct.swift
//  challengeCode
//
//  Created by user179012 on 8/20/20.
//  Copyright © 2020 user179012. All rights reserved.
//

import Foundation

struct ListProducts {
    var name: String
    var units: String
    var size: String
    var value: Double
    var promotion: Double
    var image: String
    
    init(data: [String:Any]) {
        name = data["name"] as? String ?? ""
        units = data["units"] as? String ?? ""
        size = data["size"] as? String ?? ""
        value = data["value"] as? Double ?? 0.0
        promotion = data["promotion"] as? Double ?? 0.0
        image = data["image"] as? String ?? ""
        
    }
}
