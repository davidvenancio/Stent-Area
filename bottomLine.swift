//
//  bottomLine.swift
//  Stent Area
//
//  Created by David Venancio - Nethol on 28/02/17.
//  Copyright © 2017 David Venancio - Nethol. All rights reserved.
//

import UIKit

extension UITextField {
  func setBottomBorder() {
    self.borderStyle = .none
    self.layer.backgroundColor = UIColor.white.cgColor
    
    self.layer.borderColor = UIColor.magenta.cgColor
    self.layer.masksToBounds = false
    self.layer.shadowColor = UIColor.gray.cgColor
    self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
    self.layer.shadowOpacity = 1.0
    self.layer.shadowRadius = 0.0
  }
}


class bottomLine: UITextField {

  
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
