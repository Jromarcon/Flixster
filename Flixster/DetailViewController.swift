//
//  DetailViewController.swift
//  Flixster
//
//  Created by Jro Marcon on 3/4/23.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {

    var movie: [String: Any]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let voteAvg = movie["vote_average"] as! Double
        let voteAvgString = String(voteAvg)
        
        let vote = movie["vote_count"] as! Int
        let voteString = String(vote)
        
        let popularity = movie["popularity"] as! Double
        let popularityString = String(popularity)
        
        
        
        
        
        
        
        let baseUrl = "https://image.tmdb.org/t/p/w300"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + backdropPath)
        
        movieImageView.af_setImage(withURL: backdropUrl!)
        
        
        popularityLabel.text = popularityString + " Popularity"
        voteLabel.text = voteString + " Votes"
        voteAvgLabel.text = voteAvgString + " Vote Average"
        titleLabel.text = movie["title"] as? String
        descriptionLabel.text = movie["overview"] as? String
        
        
    }
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var voteAvgLabel: UILabel!
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
}
