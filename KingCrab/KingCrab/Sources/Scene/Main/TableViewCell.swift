import UIKit
import SnapKit
import Then

class CustomTableViewCell: UITableViewCell {
    
    let img = UIImageView().then {
        $0.image = .camera
    }
    
    let label = UILabel().then {
        $0.text = "테스트"
        $0.textColor = .main500
    }
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubviews()
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Add subviews to the content view
    private func setupSubviews() {
        contentView.addSubview(img)
        contentView.addSubview(label)
    }
    
    // Set constraints using SnapKit
    private func setConstraints() {
        img.snp.makeConstraints {
            $0.leading.equalTo(contentView).offset(16)
            $0.top.equalTo(contentView).offset(10)
            $0.bottom.equalTo(contentView).offset(-10)
            $0.width.equalTo(64)
            $0.height.equalTo(64)
        }
        
        label.snp.makeConstraints {
            $0.leading.equalTo(img.snp.trailing).offset(15)
            $0.trailing.equalTo(contentView).offset(-16)
            $0.centerY.equalTo(img)
        }
    }
}

