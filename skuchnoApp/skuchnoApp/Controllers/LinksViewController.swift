//
//  LinksViewController.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 04.08.2021.
//

import UIKit

class LinksViewController: UIViewController {

    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backImage = UIImage(systemName: "chevron.left.circle.fill")

        self.navigationController?.navigationBar.backIndicatorImage = backImage

        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        tableView.frame = view.bounds
        view.addSubview(tableView)
        view.backgroundColor = .white
    }
    

}
