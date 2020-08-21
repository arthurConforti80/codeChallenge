//
//  ListProductTableViewCell.swift
//  challengeCode
//
//  Created by user179012 on 8/20/20.
//  Copyright © 2020 user179012. All rights reserved.
//

import UIKit

class ListProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contenView: UIView!
    @IBOutlet weak var imagemView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var valueRiskLabel: UILabel!
    @IBOutlet weak var btnSelect: UIButton!
    @IBOutlet weak var btnAscrease: UIButton!
    @IBOutlet weak var btnDescrease: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var viewCount: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupBtns() {
        self.countLabel.text = "5"
        self.viewCount.layer.borderWidth = 2.0
        self.viewCount.layer.borderColor = UIColor.lightGray.cgColor
        self.viewCount.layer.cornerRadius = 8
        self.btnAscrease.layer.cornerRadius = self.btnAscrease.frame.width/2
        self.btnAscrease.layer.borderWidth = 2.0
        self.btnAscrease.layer.borderColor = UIColor.link.cgColor
        self.btnDescrease.layer.borderWidth = 2.0
        self.btnDescrease.layer.borderColor = UIColor.link.cgColor
        self.btnDescrease.layer.cornerRadius = self.btnDescrease.frame.width/2
        self.btnSelect.layer.borderWidth = 2.0
        self.btnSelect.layer.borderColor = UIColor.link.cgColor
        self.btnSelect.layer.cornerRadius = 8
        self.btnSelect.layer.backgroundColor = UIColor.white.cgColor
        
    }
    
    @IBAction func addUnit(_ sender:UIButton) {
        
        
        
    }
    
}
