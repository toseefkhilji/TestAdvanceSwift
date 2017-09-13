//
//  CardTableViewCell.swift
//  SwiftAdvance
//
//  Created by Toseefhusen Khilji on 8/24/17.
//  Copyright © 2017 Toseefhusen Khilji. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet var cardView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func cardSetup() {
//        cardView.alpha = 1
//        cardView.layer.masksToBounds = false
//        cardView.layer.cornerRadius = 1
//        // if you like rounded corners
//        cardView.layer.shadowOffset = CGSize(width: -0.2, height: 0.2)
//        //%%% this shadow will hang slightly down and to the right
//        cardView.layer.shadowRadius = 1
//        //%%% I prefer thinner, subtler shadows, but you can play with this
//        cardView.layer.shadowOpacity = 0.2
//        //%%% same thing with this, subtle is better for me
//        //%%% This is a little hard to explain, but basically, it lowers the performance required to build shadows.  If you don't use this, it will lag
//        let path = UIBezierPath(rect: cardView.bounds)
//        cardView.layer.shadowPath = path.cgPath
//        backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
//        
        
        cardView.layer.masksToBounds = false
        cardView.layer.shadowOffset = CGSize(width: 0, height: 2)
        cardView.layer.shadowRadius = 2
        cardView.layer.shadowOpacity = 0.4
        //%%% I prefer choosing colors programmatically than on the storyboard
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
