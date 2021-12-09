//
//  UnderlinedLabel.swift
//  Week10
//
//  Created by Mehmet Salih ÇELİK on 8.12.2021.
//

import UIKit

class UnderlinedLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.text = self.text
    }
    
    override var text: String? {
        didSet {
            guard let text = text else { return }
            let textRange = NSRange(location: 0, length: text.count)
            let attributedText = NSMutableAttributedString(string: text)
            attributedText.addAttribute(.underlineStyle,
                                        value: NSUnderlineStyle.single.rawValue,
                                        range: textRange)
            // Add other attributes if needed
            self.attributedText = attributedText
        }
    }
    
}
