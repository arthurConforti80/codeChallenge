//
//  challengeCodeTests.swift
//  challengeCodeTests
//
//  Created by user179012 on 8/20/20.
//  Copyright © 2020 user179012. All rights reserved.
//

import XCTest
@testable import challengeCode

class challengeCodeTests: XCTestCase {
    
    override func setUp() {
        
        var productList: [ListProducts] = []
        let list: [String:Any] = ["name": "Pepsi Diet",
        "units": "1x24 unidade por caja",
        "size": "120ML LATAS",
        "value": 603.90,
        "promotion": 0,
        "image": "pepsiDiet"]
        if let obj = try? ListProducts(data: list as! [String : Any]) {
            productList.append(obj)
        }
        
        let vc = ListProductViewController()
        let model = ListProductViewModel()
        model.listProductModel = productList
        vc.startTableView()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
}
