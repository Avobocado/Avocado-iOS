
import UIKit
import Then
import SnapKit
class CustomView: UIView {
    
    let crabtext = UILabel().then {
        $0.text = "대게"
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 20)
        $0.textColor = .white
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
        addSubview(logoimage)
        addSubview(crabtext)
        
        
        setupConstraints()
    }
    private func setupConstraints() {
        
        logoimage.snp.makeConstraints {
            $0.top.equalToSuperview().inset(6)
            $0.left.equalToSuperview().inset(12)
            $0.right.equalToSuperview().inset(346)
            $0.width.height.equalTo(32)
        }
        crabtext.snp.makeConstraints {
            $0.top.equalToSuperview().inset(10)
            $0.left.equalToSuperview().inset(55)
            $0.right.equalToSuperview().inset(298)
        }
    }
}
