//
//  Category.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 03.08.2021.
//

import Foundation

struct Category {
//    var category: [Category]?
    var text: String
    var links: [Links]?
}

struct Links {
    var linkCell: String
    var linkURL: String
}

class Menu {
    var category = [Category]()
    
    init() {
        setup()
    }
    
    func setup() {
        
        let link1 = Links(linkCell: "Cайт, на котором собраны сотни гигабайт советских мультфильмов", linkURL: "https://mults.info/")
        let link2 = Links(linkCell: "Виртуальный музей космонавтики", linkURL: "https://kosmo-museum.ru/collections")
        
        let searchLinks = Category(text: "👀 Смотреть", links: [link1, link2])
        
        let link3 = Links(linkCell: "Aвтор этого сайта собирает на нем паранормальные истории", linkURL: "http://shitless.ru/")
        
        let readLinks = Category(text: "📖 Читать", links: [link3])
        
        category.append(searchLinks)
        category.append(readLinks)
        
        

    }
    
}
