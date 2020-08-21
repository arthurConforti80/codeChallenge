//
//  ViewController.swift
//  challengeCode
//
//  Created by user179012 on 8/20/20.
//  Copyright © 2020 user179012. All rights reserved.
//

import UIKit
import JGProgressHUD

class ViewController: UIViewController {
    
    @IBOutlet weak var testeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        testeLabel.text = "teste da label"
        let hud = JGProgressHUD(style: .dark)
        hud.textLabel.text = "Loading"
        hud.show(in: self.view)
        hud.dismiss(afterDelay: 3.0)
        // Do any additional setup after loading the view.
    }


}

