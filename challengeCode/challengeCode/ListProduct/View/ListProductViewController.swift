//
//  ListProductViewController.swift
//  challengeCode
//
//  Created by user179012 on 8/20/20.
//  Copyright © 2020 user179012. All rights reserved.
//
import UIKit
import JGProgressHUD

class ListProductViewController: UIViewController {
    
    var viewModel = ListProductViewModel()
    @IBOutlet weak var tableView: UITableView!
    
    var navBar = UINavigationBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ProgressLoading()
        self.setupStatusBar()
        self.startTableView()
    }
    
    func ProgressLoading() {
        let hud = JGProgressHUD(style: .dark)
        hud.textLabel.text = "Loading"
        hud.show(in: self.view)
        hud.dismiss(afterDelay: 3.0)
    }
    
    func setupStatusBar() {
        navigationController?.navigationBar.barTintColor = UIColor.blue
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
    }
    
    func startTableView() {
        
        let nib = UINib(nibName: "ListProductTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ListProductTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}

extension ListProductViewController: UITableViewDelegate {
    
}

extension ListProductViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListProductTableViewCell", for: indexPath) as! ListProductTableViewCell
        
        cell.setupBtns()
        return cell
    }
    
    
}

