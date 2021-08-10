//
//  LinksViewController.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 04.08.2021.
//

import UIKit

class LinksViewController: UIViewController {

    var linksCollectionView: UICollectionView!
    
    var menu: Category!
    var selectedCategory: Category? {
        didSet {
            if let category = self.selectedCategory {
                self.title = category.text
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let backImage = UIImage(systemName: "chevron.left.circle.fill")
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//        self.navigationController?.navigationBar.backIndicatorImage = UIImage(systemName: "chevron.left.circle.fill")
//
//        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(systemName: "chevron.left.circle.fill")
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        linksCollectionView = UICollectionView(frame: view.frame,
                                          collectionViewLayout: layout)
        linksCollectionView.register(LinksCollectionViewCell.nib(), forCellWithReuseIdentifier: LinksCollectionViewCell.identifier)
        linksCollectionView.showsVerticalScrollIndicator = false
        linksCollectionView.frame = view.bounds
        linksCollectionView.delegate = self
        linksCollectionView.dataSource = self
        linksCollectionView.backgroundColor = .white
        view.addSubview(linksCollectionView)

        selectedCategory = menu
    }
}

extension LinksViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let links = selectedCategory?.links {
            return links.count
        } else {
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LinksCollectionViewCell.identifier, for: indexPath) as? LinksCollectionViewCell else { return UICollectionViewCell() }
        
        guard let link = selectedCategory?.links![indexPath.row] else { return UICollectionViewCell()}
        
        cell.setupCell(links: link)
        cell.viewForLinksCell.tag = indexPath.row
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        cell.viewForLinksCell.addGestureRecognizer(tap)
        
        return cell
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        let indexPath1 = IndexPath(row: sender.view!.tag, section: 0)
        let url = self.menu.links![indexPath1.row].linkURL
        let webViewViewController = WebViewViewController()
        webViewViewController.urlString = url
        self.navigationController?.pushViewController(webViewViewController, animated: true)
    }
}

extension LinksViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width - 32, height: 90)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 12, left: 0, bottom: 32, right: 0)
    }
}
