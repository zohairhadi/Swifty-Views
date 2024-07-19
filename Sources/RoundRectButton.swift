//
//  RoundRectButton.swift
//  Swifty Views
//
//  Created by Zohair on 09/09/2021.
//

import UIKit

public class RoundRectButton: UIButton {

    public required init(color: UIColor, titleColor: UIColor, borderColor: UIColor, borderWidth: CGFloat, titleString : String, size: CGFloat) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 10
        backgroundColor = color
        setTitle(titleString, for: .normal)
        setTitleColor(titleColor, for: .normal)
        setTitleColor(titleColor.withAlphaComponent(0.2), for: .highlighted)
        self.titleLabel!.font = UIFont.boldSystemFont(ofSize: size)
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }

    public required init(color: UIColor, titleColor: UIColor, borderColor: UIColor, borderWidth: CGFloat, titleString : String, size: CGFloat, img: UIImage) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 10
        backgroundColor = color
        setTitle(titleString, for: .normal)
        setTitleColor(titleColor, for: .normal)
        setTitleColor(titleColor.withAlphaComponent(0.2) , for: .highlighted)
        setImage(img, for: .normal)
        imageView?.tintColor = .black
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left:0, bottom: 0, right: 10)
        self.titleLabel!.font = UIFont.boldSystemFont(ofSize: size)
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
