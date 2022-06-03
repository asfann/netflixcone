//
//  TitlePreviewViewController.swift
//  Netflix Clone
//
//  Created by Mac on 03/06/2022.
//

import UIKit
import WebKit
class TitlePreviewViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.text = "Harry potter"
        return label
    }()
    
    
    
    private let overviewLavel: UILabel = {
        let label =  UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "This is the best movie ever to watch as a kid!"
        return label
    }()
    
    
    private let downloadButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Download", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    private let webview: WKWebView = {
        let webview = WKWebView()
        webview.translatesAutoresizingMaskIntoConstraints = false
        
        return webview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webview)
        view.addSubview(overviewLavel)
        view.addSubview(titleLabel)
        view.addSubview(downloadButton)
        
        view.backgroundColor = .systemBackground
        configureContraints()
    }
    
    
    func configureContraints() {
        let webViewContraints = [
            webview.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            webview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webview.heightAnchor.constraint(equalToConstant: 300)
        ]
        
        let titleLabelContraints = [
            titleLabel.topAnchor.constraint(equalTo: webview.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)]
        
        
        let overviewLabelContraints = [
            overviewLavel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 15),
            overviewLavel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)]
        
        let downloadButtonContraints = [
            downloadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            downloadButton.topAnchor.constraint(equalTo: overviewLavel.bottomAnchor, constant: 25),
            downloadButton.widthAnchor.constraint(equalToConstant: 140),
            downloadButton.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        NSLayoutConstraint.activate(webViewContraints)
        NSLayoutConstraint.activate(titleLabelContraints)
        NSLayoutConstraint.activate(overviewLabelContraints)
        NSLayoutConstraint.activate(downloadButtonContraints)
        
    }
    
    public func configure(with model: TitlePreviewViewModel) {
          titleLabel.text = model.title
          overviewLavel.text = model.titleOverview
          
          guard let url = URL(string: "https://www.youtube.com/embed/\(model.youtubeView.id.videoId)") else {
              return
          }
          
          webview.load(URLRequest(url: url))
      }
    
    
    
}
