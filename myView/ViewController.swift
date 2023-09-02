//
//  ViewController.swift
//  myView
//
//  Created by Семён Винников on 02.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let square = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSquare()
        setupLayout()
    }
    
    override func viewDidLayoutSubviews() {
        gradientSquare()
    }
    
    
    func configureSquare() {
        view.addSubview(square)
        
        square.layer.cornerRadius = 10
        
        square.layer.shadowColor = UIColor.black.cgColor
        square.layer.shadowRadius = 5
        square.layer.shadowOpacity = 0.6
        square.layer.shadowOffset = CGSize(width: 2.5, height: 2.5)
        
    }
    
    
    func setupLayout() {
        
        square.translatesAutoresizingMaskIntoConstraints = false
        
        //constraints
        square.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        square.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        square.widthAnchor.constraint(equalToConstant: 100).isActive = true
        square.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }

    
    func gradientSquare() {
        
        let gradient = CAGradientLayer()
        
        gradient.frame = square.bounds
        
        let colorOne = UIColor.systemTeal.cgColor
        let colorTwo = UIColor.red.cgColor
        gradient.colors = [colorOne, colorTwo]
        
        square.layer.addSublayer(gradient)
        gradient.cornerRadius = square.layer.cornerRadius
        
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
    }
}



