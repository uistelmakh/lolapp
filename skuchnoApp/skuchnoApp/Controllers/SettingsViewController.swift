//
//  SettingsViewController.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 28.07.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    let identifier = "cell"
    var tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: UITableView.Style.insetGrouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Настройки"
        //self.navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        view.addSubview(tableView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createConstrains()
    }
    
    fileprivate func createConstrains() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Подписка"
        } else if section == 1 {
            return "Использование"
        } else if section == 2 {
            return "Еще"
        }
        return "Поделиться"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 2
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: identifier)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = "Управление подпиской"
        } else if indexPath.section == 1 {
            cell.textLabel?.text = "Как это работает?"
        } else if indexPath.section == 2 {
            if indexPath.row == 0 {
                cell.textLabel?.text = "Связаться с нами"
            } else if indexPath.row == 1 {
                cell.textLabel?.text = "Оценить приложение"
            }
        } else if indexPath.section == 3 {
            cell.textLabel?.text = "Поделиться приложением"
        }
        
        return cell
    }
    
    
}
