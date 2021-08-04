//
//  MainViewController.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 28.07.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    var collectionView: UICollectionView!
    var category = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createCollectionView()
        addCategories()
        
    }
    
    fileprivate func addCategories() {
        let ct1 = Category(text: "📚 Учиться")
        let ct2 = Category(text: "👀 Смотреть")
        let ct3 = Category(text: "🎧 Слушать")
        let ct4 = Category(text: "📖 Читать")
        let ct5 = Category(text: "🚶‍♂️ Гулять")
        let ct6 = Category(text: "🎼 На фон")
        
        category.append(ct1)
        category.append(ct2)
        category.append(ct3)
        category.append(ct4)
        category.append(ct5)
        category.append(ct6)
    }
    
    fileprivate func createCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: view.frame,
                                          collectionViewLayout: layout)
        collectionView.register(CategoryCollectionViewCell.nib(), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        collectionView.register(HeaderCategoryCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCategoryCollectionReusableView.identifier)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
}

extension MainViewController:  UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell else { return UICollectionViewCell() }
        
        cell.textLabel.text = category[indexPath.row].text
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        cell.viewForCell.addGestureRecognizer(tap)
        
        return cell
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        //let indexPath1 = IndexPath(row: sender.view!.tag, section: 0)
        let linkViewController = LinksViewController()
        self.navigationController?.pushViewController(linkViewController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCategoryCollectionReusableView.identifier, for: indexPath) as? HeaderCategoryCollectionReusableView else { return UICollectionReusableView() }
        
        header.configure()
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 120)
    }
    
    
}

extension MainViewController:  UICollectionViewDelegate {
    
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width - 32, height: 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 12, left: 0, bottom: 32, right: 0)
    }
}


