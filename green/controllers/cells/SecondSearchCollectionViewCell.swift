//
//  SecondSearchCollectionViewCell.swift
//  green
//
//  Created by Muhammadjon Mamarasulov on 3/17/22.
//

import UIKit

class SecondSearchCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var Lbl1: UILabel!
    @IBOutlet weak var Lbl2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell(info:Food){
        Lbl1.text = info.title
        Lbl2.text = info.name
        
    }

}
