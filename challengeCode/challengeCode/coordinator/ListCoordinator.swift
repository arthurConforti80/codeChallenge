//
//  ListCoordinator.swift
//  challengeCode
//
//  Created by user179012 on 8/20/20.
//  Copyright © 2020 user179012. All rights reserved.
//

import Foundation
import UIKit

class ListCoordinator: Coordinator {
    
    private let navController: UINavigationController
    private let window: UIWindow
    
    init(navController: UINavigationController, window: UIWindow) {
        self.navController = navController
        self.window = window
    }
    
    func start() {
        window.rootViewController = navController
        window.makeKeyAndVisible()
        self.startListProduct()
        
    }
    
    func startListProduct() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let mainVC = storyboard.instantiateInitialViewController() as? ListProductViewController {
            let model = ListProductViewModel()
            model.coordinatorDelegate = self
            mainVC.viewModel = model
            navController.pushViewController(mainVC, animated: true)
        }
    }
}


extension ListCoordinator: ListProductViewModelCoordinatorDeelegate {
    func back(viewModel: ListProductViewModel) {
        //
    }
}
