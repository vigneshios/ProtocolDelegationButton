//
//  SuperHeroCell.swift
//  ProtocolDelegation
//
//  Created by Vignesh on 22/01/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import UIKit

protocol customCellButtonDelegate {
    func onButtonTapped(cell: SuperHeroCell)
}

class SuperHeroCell: UITableViewCell {

    @IBOutlet weak var profileImgView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var followButton: UIButton!
    
    //Delegate
    var customDelegate: customCellButtonDelegate!
    
    var superHeros: SuperHero!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    @IBAction func followbuttonTapped(_ sender: Any) {
        print("Button pressed")
        customDelegate.onButtonTapped(cell: self)
        
    }
    
    func configureCell(superHero: SuperHero) {
        
        profileImgView.image = UIImage(named: superHero.img)
        nameLbl.text = superHero.name
       // followButton.isSelected = superHero.isSelected
        
        superHeros  = superHero

        
//        if superHero.isSelected {
//            followButton.setTitle("Following", for: .normal)
//        }else {
//            followButton.setTitle("Follow", for: .normal)
//        }
        
        followButton.layer.cornerRadius = 5
        followButton.layer.borderWidth = 2
        followButton.layer.borderColor = UIColor.white.cgColor
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
