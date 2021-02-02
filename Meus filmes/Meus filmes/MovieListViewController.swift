//
//  ViewController.swift
//  Meus Movies
//
//  Created by Gilberto da Luz on 02/02/21.
//

import UIKit

class MovieListViewController: UITableViewController {
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addMovies()
    }
    
    private func addMovies(){
        let movie1 = Movie(title:"007 - Spectre", description:  "descricao 1", image: UIImage(named: "filme1"))
        movies.append( movie1 )
        
        let movie2  = Movie(title:"Star Wars", description: "descricao 2", image: UIImage(named: "filme2"))
        movies.append( movie2 )
        
        let movie3 = Movie(title:"Impacto Mortal", description: "descricao 3", image: UIImage(named: "filme3"))
        movies.append( movie3 )
        
        let movie4 = Movie(title:"Deadpool", description: "descricao 4", image: UIImage(named: "filme4"))
        movies.append( movie4 )
        
        let movie5 = Movie(title:"O Regresso", description: "descricao 5", image: UIImage(named: "filme5"))
        movies.append( movie5 )
        
        let movie6 = Movie(title:"A Herdeira", description: "descricao 6", image: UIImage(named: "filme6"))
        movies.append( movie6 )
        
        let movie7 = Movie(title:"Caçadores de emoção", description: "descricao 7", image: UIImage(named: "filme7"))
        movies.append( movie7 )
        
        let movie8 = Movie(title:"Regresso do mal", description: "descricao 8", image: UIImage(named: "filme8"))
        movies.append( movie8 )
        
        let movie9 = Movie(title:"Tarzan", description: "descricao 9", image: UIImage(named: "filme9"))
        movies.append( movie9 )
        
        let movie10 = Movie(title:"Movie 9", description: "descricao 10", image: UIImage(named: "filme10"))
        movies.append( movie10 )
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {1}
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { movies.count}
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentItem = movies[indexPath.row]
        let identifier = "movieItemList"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = currentItem.title
        cell.imageView?.image = currentItem.image
        return cell
    }
}

