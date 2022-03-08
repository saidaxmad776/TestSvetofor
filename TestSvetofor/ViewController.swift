//
//  ViewController.swift
//  TestSvetofor
//
//  Created by Test on 07/03/22.
//

import UIKit

class ViewController: UIViewController {

    let hd = UIScreen.main.bounds.height
    
    var buttonNext = UIButton()
    var viewRed = UIView()
    var viewYellow = UIView()
    var viewGreen = UIView()
    
    let colorDark = 0.1
    let colorLite = 2.0
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemGray2
        
        buttonNext.frame = CGRect(x: 130, y: 750, width: 150, height: 40)
        buttonNext.setTitle("START", for: .normal)
        buttonNext.backgroundColor = .black
        buttonNext.layer.cornerRadius = 20
        self.view.addSubview(buttonNext)
        buttonNext.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        viewRed.frame = CGRect(x: 130, y: 60, width: 160, height: 160)
        viewRed.backgroundColor = .red
        viewRed.layer.cornerRadius = 80
        viewRed.alpha = colorDark
        self.view.addSubview(viewRed)
        
        
        viewYellow.frame = CGRect(x: 130, y: 260, width: 160, height: 160)
        viewYellow.backgroundColor = .yellow
        viewYellow.layer.cornerRadius = 80
        viewYellow.alpha = colorDark
        self.view.addSubview(viewYellow)
        
//        viewGreen.frame = CGRect(x: 130, y: 460, width: 160, height: 160)
        viewGreen.backgroundColor = .green
        viewGreen.layer.cornerRadius = 80
        viewGreen.alpha = colorDark
        self.view.addSubview(viewGreen)
        viewGreen.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            
            
            viewGreen.topAnchor.constraint(equalTo: view.topAnchor, constant: 460),
            viewGreen.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 130),
            viewGreen.heightAnchor.constraint(equalToConstant: 160),
            viewGreen.widthAnchor.constraint(equalTo: viewGreen.heightAnchor)
        ])
        
        
        
    }

    @objc func buttonTapped() {
   
        buttonNext.setTitle("NEXT", for: .normal)
       
        
        switch count {
        case 0:
            viewRed.alpha = colorLite
            viewYellow.alpha = colorDark
            viewGreen.alpha = colorDark
            count = 1
        case 1:
            viewYellow.alpha = colorLite
            viewRed.alpha = colorDark
            viewGreen.alpha = colorDark
            count = 2
        case 2:
            viewGreen.alpha = colorLite
            viewRed.alpha = colorDark
            viewYellow.alpha = colorDark
            count = 0
        default:
            break
        }
    }

}

