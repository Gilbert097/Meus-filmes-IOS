//
//  MovieDetailViewController.swift
//  Meus filmes
//
//  Created by Gilberto da Luz on 02/02/21.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    var currentMovie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = currentMovie.title
        self.descriptionLabel.text = currentMovie.description
        self.movieImageView.image = currentMovie.image
    }

}
