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
        webView.frame = view.bounds
        view.addSubview(webView)
        
    }

}
