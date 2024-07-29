import UIKit
import SnapKit
import Then

class MyPage3ViewController: UIViewController {
    
    let logoimage = UIImageView().then {
        $0.image = .logo
    }

    
    let plus = UIImageView().then {
        $0.image = .plus
    }
    let label = UILabel().then {
        $0.text = "dudwo._"
        $0.textColor = .black
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 32)
    }
    
    let fix = UIImageView().then {
        $0.image = .fix
        
    }
    let customview = UIView().then {
        $0.backgroundColor = .main
        
    }
    
    let customeview1 = UIView().then{
        $0.backgroundColor = .main
        $0.layer.cornerRadius = 22
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    let textlabel = UILabel().then {
        $0.text = "대게"
        $0.textColor  = .white
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 20)
    }
    let textlabel1 = UILabel().then {
        $0.text = "dudwo._"
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
        $0.textColor = .white
    }
 
    
    let catpicture = UIImageView().then {
        $0.image = .cat
    }
    

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        layout()
    }
    func layout() {
        [
            
        
            customview,
            customeview1
            
        ].forEach {view.addSubview($0) }
        
        [
            logoimage,
            textlabel,
            textlabel1,
            
            
           
        
        ].forEach {customview.addSubview($0) }
        [
            
        
            
            plus,
            fix,
            label,
            catpicture
            
        ].forEach{customeview1.addSubview($0) }
        logoimage.snp.makeConstraints {
            $0.height.equalTo(32)
            $0.left.equalToSuperview().inset(12)
            $0.top.equalToSuperview().inset(6)
            $0.right.equalToSuperview().inset(346)
            
        }
        
        customview.snp.makeConstraints {
            $0.width.equalTo(390)
            $0.height.equalTo(187)
            $0.bottom.equalToSuperview().offset(-610)
            
        
        }
        
        catpicture.snp.makeConstraints {
            $0.width.height.equalTo(140)
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().inset(52)
            
        }
        textlabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(10)
            $0.left.equalToSuperview().inset(55)
            $0.right.equalToSuperview().inset(298)
        }
        
        textlabel1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(13)
            $0.right.equalToSuperview().inset(12)
        }
      
        customeview1.snp.makeConstraints {
            $0.width.equalTo(340)
            $0.height.equalTo(380)
            $0.top.equalToSuperview().inset(152)
            $0.left.right.equalToSuperview().inset(25)
        }
        plus.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.top.equalToSuperview().inset(72)
            $0.centerX.equalToSuperview()
        }
        
        fix.snp.makeConstraints {
            $0.width.height.equalTo(28)
            $0.top.equalToSuperview().inset(24)
            $0.right.equalToSuperview().inset(24)
        }
        label.snp.makeConstraints {
            $0.top.equalToSuperview().inset(232)
            $0.left.equalToSuperview().inset(107)
            $0.height.equalTo(38)
            
        }
    }

}


