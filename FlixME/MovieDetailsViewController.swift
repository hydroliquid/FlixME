//
//  MovieDetailsViewController.swift
//  FlixME
//
//  Created by MICHAEL BENTON on 2/7/19.
//  Copyright © 2019 Zlabs. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController
{

    var movie: [String:Any]!
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var smallPosterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w1280" + backdropPath)
        
        backDropImageView.af_setImage(withURL: backdropUrl!)
        
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        smallPosterImageView.af_setImage(withURL: posterUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
