//
//  SuperHerosVC.swift
//  ProtocolDelegation
//
//  Created by Vignesh on 22/01/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import UIKit

class SuperHerosVC: UIViewController {

    @IBOutlet weak var tblVw: UITableView!
    
   // var superHeros : [SuperHero] = [SuperHero]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblVw.dataSource = self
        tblVw.delegate = self
        
      
    }
    
}

extension SuperHerosVC: UITableViewDataSource, UITableViewDelegate {
    
    // Delegate & Datasource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getSuperHeros().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath) as? SuperHeroCell else {return UITableViewCell()}
        let superHero = DataService.instance.getSuperHeros()[indexPath.row]
        cell.customDelegate = self
        cell.configureCell(superHero: superHero)
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}

extension SuperHerosVC : customCellButtonDelegate {
    func onButtonTapped(cell: SuperHeroCell) {
        
  
        guard let user = cell.superHeros else { return }
        
        if user.isSelected {
            // Unfollow option
            cell.followButton.configureButton(didFollow: false)

        } else {
            cell.followButton.configureButton(didFollow: true)
        }
        
        cell.superHeros?.isSelected = !user.isSelected
        
        ///tblVw.reloadData()
        
    }
    
    
}


extension UIButton {
    func configureButton(didFollow: Bool) {
        if didFollow {
            self.setTitle("Following", for: .normal)
            self.layer.cornerRadius = 5
            self.layer.borderWidth = 2
            self.layer.borderColor = UIColor.white.cgColor
        }else {
            self.setTitle("Follow", for: .normal)
            self.layer.cornerRadius = 5
            self.layer.borderWidth = 2
            self.layer.borderColor = UIColor.white.cgColor
        }
    }
}
