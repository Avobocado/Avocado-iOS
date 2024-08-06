//
//  CustomView.swift
//  KingCrab2
//
//  Created by 허영재 on 8/2/24.
//

import UIKit
import Then
import SnapKit
class Iview : UIView {
 
    let lview = UIView().then {
        $0.backgroundColor = .gray300
    }
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(lview)
  
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        lview.snp.makeConstraints {
            $0.width.equalTo(0)
            $0.height.equalTo(28)
        }
        
      
    
    }
}
