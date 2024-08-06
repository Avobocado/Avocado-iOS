import UIKit
import Then
import SnapKit

class WhiteView: UIView {
    
    let titlelabel = UILabel().then {
        $0.text = "제목"
        $0.textColor = .black
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 18)
    }
    let Iview = UIView().then {
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
        addSubview(titlelabel)
        
        addSubview(Iview)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        titlelabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(16)
            $0.left.equalToSuperview().inset(25)
            $0.right.equalToSuperview().inset(333)
            $0.height.equalTo(21)
        }
    }
}
