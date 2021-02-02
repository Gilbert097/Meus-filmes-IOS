//
//  ViewController.swift
//  Meus filmes
//
//  Created by Gilberto da Luz on 02/02/21.
//

import UIKit

class MovieListViewController: UITableViewController {
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        movies.append(Movie(title:"Filme 1", description: "teste"))
        movies.append(Movie(title:"Filme 2", description: "teste"))
    }

    override func numberOfSections(in tableView: UITableView) -> Int {1}
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { movies.count}
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentItem = movies[indexPath.row]
        let identifier = "movieItemList"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = currentItem.title
        return cell
    }
}

