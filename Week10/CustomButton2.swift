//
//  CustomButton2.swift
//  Week10
//
//  Created by Mehmet Salih ÇELİK on 9.12.2021.
//

import UIKit

class CustomButton2: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        backgroundColor = .yellow
        setTitleColor(.systemMint, for: .normal)
        setTitle("Hesapla", for: .normal)
    }
}
