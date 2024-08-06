import UIKit
import Then
import SnapKit
class GrayView: UIView {

    let write1 = UILabel().then {
        $0.text = "작성자"
        $0.font = UIFont(name: "WantedSans-Medium", size: 12)
    }
    
    let write2 = UILabel().then {
        $0.text = "dudwo._"
        $0.font = UIFont(name: "WantedSans-Medium", size: 12)
    }
    
    let write3 = UILabel().then {
        $0.text = "작성일"
        $0.font = UIFont(name: "WantedSans-Medium", size: 12)
    }
    
    let write4 = UILabel().then {
        $0.text = "2024.07.07"
        $0.font = UIFont(name: "WantedSans-Medium", size: 12)
    }
 
    let lovetext = UILabel().then{
        $0.text = "30"
        $0.font = UIFont(name: "WantedSans-Medium", size: 16)
        $0.textColor = .gray500
    }
    
    let loveimage = UIImageView().then {
        $0.image = .heart
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
        addSubview(write1)
        addSubview(write2)
        addSubview(write3)
        addSubview(write4)
        addSubview(lovetext)
        addSubview(loveimage)
        setupConstraints()
    }
    
    private func setupConstraints() {
        write1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(17)
            $0.left.equalToSuperview().inset(29)
            $0.right.equalToSuperview().inset(329)
            $0.height.equalTo(14)
        }
        
        write2.snp.makeConstraints {
            $0.top.equalToSuperview().inset(17)
            $0.left.equalToSuperview().inset(85)
            $0.right.equalToSuperview().inset(243)
            $0.height.equalTo(14)
        }
        write3.snp.makeConstraints {
            $0.left.equalToSuperview().inset(185)
            $0.top.equalToSuperview().inset(17)
            $0.right.equalToSuperview().inset(183)
            $0.height.equalTo(14)
        }
        write4.snp.makeConstraints {
            $0.left.equalToSuperview().inset(231)
            $0.right.equalToSuperview().inset(96)
            $0.top.equalToSuperview().inset(17)
            $0.height.equalTo(14)
        }
        lovetext.snp.makeConstraints {
            $0.top.equalToSuperview().inset(15)
            $0.left.equalToSuperview().inset(322)
            $0.right.equalToSuperview().inset(47)
        }
        loveimage.snp.makeConstraints {
            $0.top.equalToSuperview().inset(16.5)
            $0.left.equalToSuperview().inset(347)
            $0.width.height.equalTo(16)
        }
    }
}
