//
//  MovieDetailsViewController.swift
//  unit 1 flix
//
//  Created by Dustin Sherwood on 9/14/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var titleDetailsView: UILabel!
    @IBOutlet weak var descriptionDetailsView: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(movie["title"] as! String)
        
        let title = movie["title"] as! String
        let synopsis = movie["overview"] as! String
        titleDetailsView.text = title
        descriptionDetailsView.text = "  " + synopsis
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        poster.af.setImage(withURL: posterUrl!)
        backdropView.af.setImage(withURL: backdropUrl!)
        
    }
    

}
