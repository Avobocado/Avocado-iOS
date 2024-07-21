import UIKit
import SnapKit
import Then

class idTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        self .then {
            
            
            $0.textColor = .textcolor
            $0.backgroundColor = .white
            
            
        }
    }
}

