//
//  ListProductViewModel.swift
//  challengeCode
//
//  Created by user179012 on 8/20/20.
//  Copyright © 2020 user179012. All rights reserved.
//

import Foundation

protocol ListProductViewDelegate: class {
    
    var newDatas: String? {get set}
    
}

protocol ListProductViewModelCoordinatorDeelegate: class {
    func back(viewModel:ListProductViewModel)
}

class ListProductViewModel: ListProductViewDelegate {
    
    var coordinatorDelegate: ListProductViewModelCoordinatorDeelegate?
    var newDatas: String?
    var listProductModel: [ListProducts] = []

    func goBack() {
        coordinatorDelegate?.back(viewModel: self)
    }
    
    func getJson() {
        
        let jsonList = readJSONFromFile()
        //guard let data = jsonList as? [[String:Any]] else {return}
        if let products: NSArray = jsonList as? NSArray {
            for list in products {
                if let obj = try? ListProducts(data: list as! [String : Any]) {
                    self.listProductModel.append(obj)
                }
            }
        } else {
            print("no products")
        }
        
    }
    
    func readJSONFromFile() -> Any?
    {
        let fileName = "service"
        var json: Any?
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let fileUrl = URL(fileURLWithPath: path)
                // Getting data from JSON file using the file URL
                let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
                json = try? JSONSerialization.jsonObject(with: data)
            } catch {
                // Handle error here
            }
        }
        return json
    }}
