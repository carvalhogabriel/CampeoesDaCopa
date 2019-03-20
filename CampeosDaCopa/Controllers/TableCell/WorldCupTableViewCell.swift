//
//  WorldCupTableViewCell.swift
//  CampeosDaCopa
//
//  Created by Gabriel Carvalho Guerrero on 20/03/19.
//  Copyright © 2019 Gabriel Carvalho Guerrero. All rights reserved.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    @IBOutlet weak var labelYear: UILabel!
    @IBOutlet weak var labelCountry: UILabel!
    @IBOutlet weak var imageViewWinner: UIImageView!
    @IBOutlet weak var labelWinner: UILabel!
    @IBOutlet weak var labelWinnerScore: UILabel!
    @IBOutlet weak var imageViewVice: UIImageView!
    @IBOutlet weak var labelVice: UILabel!
    @IBOutlet weak var labelViceScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with cup: WorldCup) {
        labelYear.text = "\(cup.year)"
        imageViewWinner.image = UIImage(named: cup.winner)
        imageViewVice.image = UIImage(named: cup.vice)
        labelWinner.text = cup.winner
        labelVice.text = cup.vice
        labelCountry.text = cup.country
        labelWinnerScore.text = cup.winnerScore
        labelViceScore.text = cup.viceScore
    }

}
