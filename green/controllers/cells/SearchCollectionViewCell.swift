//
//  SearchCollectionViewCell.swift
//  green
//
//  Created by Muhammadjon Mamarasulov on 3/17/22.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var sLabel: UILabel!
    @IBOutlet weak var sView: UIView!
    
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell2(item:Item){
        sLabel.text = item.name
        sView.isHidden = !item.isSelect
        if item.isSelect{
            sLabel.textColor = UIColor.orange
        }else{
            sLabel.textColor = UIColor.systemGray
        }
    }

}
