//
//  ViewController.swift
//  Swifty-Views
//
//  Created by Zohair on 13/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let roundRectButton: RoundRectButton = {
        let button = RoundRectButton(color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), titleColor: .white, borderColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), borderWidth: 2, titleString: "Hello", size: 20)
        return button
    }()
    
    private let roundRectButtonWithImage: RoundRectButton = {
        let button = RoundRectButton(color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), titleColor: .white, borderColor: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), borderWidth: 2, titleString: "Hello", size: 20, img: UIImage(systemName: "phone")!)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureButtons()
    }
    
    //MARK:- Constraint Methods
    private func configureButtons(){
        view.addSubview(roundRectButton)
        roundRectButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        roundRectButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        roundRectButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        roundRectButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        view.addSubview(roundRectButtonWithImage)
        roundRectButtonWithImage.topAnchor.constraint(equalTo: roundRectButton.bottomAnchor, constant: 40).isActive = true
        roundRectButtonWithImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        roundRectButtonWithImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        roundRectButtonWithImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }


}

