//
//  WebViewViewController.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 05.08.2021.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController {

    var webView = WKWebView()
    var urlString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: urlString) else { return }
        webView.load(URLRequest(url: url))
        
        view.addSubview(webView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }

}
