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
    
    func goBack() {
        coordinatorDelegate?.back(viewModel: self)
    }
}
