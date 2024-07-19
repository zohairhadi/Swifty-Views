//
//  RoundSquareButton.swift
//  Swifty-Views
//
//  Created by Zohair on 24/01/2022.
//

import UIKit

public class RoundSquareButton: UIButton {

    required init(color: UIColor, titleColor: UIColor, borderColor: UIColor, borderWidth: CGFloat, size: CGFloat, img: UIImage) {
        super.init(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 10
        backgroundColor = color
        setImage(img, for: .normal)
        setImage(img, for: .highlighted)
        imageView?.tintColor = .black
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
