//
//  CustomCell.swift
//  Stent Area
//
//  Created by David Venancio - Nethol on 17/02/17.
//  Copyright © 2017 David Venancio - Nethol. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

  @IBOutlet weak var imagemGrupo: UIImageView!
  @IBOutlet weak var titulo: UILabel!
  @IBOutlet weak var subtitulo: UILabel!
  @IBOutlet weak var descricao: UILabel!

  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  // Here you can customize the appearance of your cell
  override func layoutSubviews() {
    super.layoutSubviews()
    // Customize imageView like you need

    
     
  }

}
