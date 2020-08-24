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
    @IBOutlet weak var leadingValueRisk: NSLayoutConstraint!
    
    var countUnits: Int = 0
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupBtns() {
  
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
    
    func setupLabels(product: ListProducts?) {
        
        self.titleLabel.text = product?.name
        self.subTitleLabel.text = product?.size
        self.unitLabel.text = product?.units
        self.countLabel.text = "0"
        let value = String(format: "%.2f", product?.value ?? 0.0)
        let promotion = String(format: "%.2f", product?.promotion ?? 0.0)
        if product?.promotion == 0.0 {
            self.valueRiskLabel.text = "RD$\(value)"
            self.leadingValueRisk.constant = 10
            self.valueLabel.isHidden = true
        } else {
            self.valueLabel.text = "RD$\(promotion)"

            let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "RD$\(value)")
                attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
            self.valueRiskLabel.attributedText = attributeString
            
        }

        self.imagemView.image = UIImage(named: product?.image.lowercased() ?? "")
        
        

    }
    
    @IBAction func addUnit(_ sender:UIButton) {
        
        self.btnSelect.setTitleColor(UIColor.clear, for: .normal)
        self.btnSelect.setTitle("", for: .normal)
        let systemImage = UIImage(systemName: "checkmark")
        self.btnSelect.setImage(systemImage, for: .normal)
        self.btnSelect.layer.borderWidth = 0
        self.btnSelect.layer.borderColor = UIColor.clear.cgColor
        self.btnSelect.layer.cornerRadius = 8
        self.btnSelect.layer.backgroundColor = UIColor.lightGray.cgColor
        
    }
    
    @IBAction func btnAscrease(_ sender:UIButton) {
        
        self.countUnits = self.countUnits + 1
        self.countLabel.text = String(self.countUnits)
        
    }
    
    @IBAction func btnDescrease(_ sender:UIButton) {
        self.countUnits = self.countUnits - 1
        self.countLabel.text = String(self.countUnits)
        
    }
    
}
