//
//  SignUpCollectionViewCell.swift
//  green
//
//  Created by Muhammadjon Mamarasulov on 3/13/22.
//

import UIKit

class SignUpCollectionViewCell: UICollectionViewCell {
    
    let mycolor1: UIColor = UIColor(red: 127/255, green: 119/255, blue: 254/255, alpha: 1)
    
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var cView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func myUpdateCell(data: Data){
        cLabel.text = data.name
        cView.isHidden = !data.isSelect
        if data.isSelect{
            cLabel.textColor = UIColor.orange
        }else{
            cLabel.textColor = UIColor.systemGray
        }
    }

}
