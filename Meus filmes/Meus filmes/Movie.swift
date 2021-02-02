//
//  Movie.swift
//  Meus filmes
//
//  Created by Gilberto da Luz on 02/02/21.
//

import Foundation
import UIKit

class Movie{
    var title:String = ""
    var description:String = ""
    var image:UIImage?
    
    init(title:String, description:String, image:UIImage? = nil){
        self.title = title
        self.description = description
    }
}
