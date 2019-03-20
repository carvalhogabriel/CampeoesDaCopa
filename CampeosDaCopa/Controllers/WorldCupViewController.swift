//
//  WorldCupViewController.swift
//  CampeosDaCopa
//
//  Created by Gabriel Carvalho Guerrero on 20/03/19.
//  Copyright © 2019 Gabriel Carvalho Guerrero. All rights reserved.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    @IBOutlet weak var imageViewWinner: UIImageView!
    @IBOutlet weak var imageViewVice: UIImageView!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelWinner: UILabel!
    @IBOutlet weak var labelVice: UILabel!
    @IBOutlet weak var tableview: UITableView!
    
    var worldCup: WorldCup!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "WorldCup \(worldCup.year)"
        imageViewWinner.image = UIImage(named: "\(worldCup.winner).png")
        imageViewVice.image = UIImage(named: "\(worldCup.vice).png")
        labelWinner.text = worldCup.winner
        labelVice.text = worldCup.vice
        labelScore.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"
    }

}

extension WorldCupViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
        cell.prepare(with: game)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let match = worldCup.matches[section]
        return match.stage
    }
    
}

extension WorldCupViewController: UITableViewDelegate {
    
}
