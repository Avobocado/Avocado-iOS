import UIKit
import SnapKit
import Then

class LoginViewController: UIViewController {
    
    let logoimage = UIImageView().then {
        $0.image = .logo
    }
    
    let logotext = UILabel().then {
        $0.text = "대게"
        $0.textColor = .dglgcolor
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 32)
    }
    let explainLabel = UILabel().then {
        $0.text = "대마고 게시판에 로그인 하세요"
        $0.textColor = .black
        $0.changePointColor(targetStringList: ["대", "게"], color: .dglgcolor)
        $0.font = UIFont(name: "WantedSans-Medium", size: 16)
    }
    
//    let idtext = UILabel().then {
//        $0.text = "아이디"
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
//    }
    
    let idTextField = CrabTextField(titleText: "아이디", placeholder: "아이디를 입력해주세요", isHidden: true)
//    let idtextfield = idTextField().then {
//        $0.placeholder = "아이디를 입력하세요"
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 14)
//        
//        if let palceColor = UIColor(named: "palce") {
//            $0.layer.borderColor = palceColor.cgColor
//        }
//        $0.layer.borderWidth = 2.0
//        $0.layer.cornerRadius = 10
//        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 11.95, height:$0.frame.height))
//        $0.leftView = leftPaddingView
//        $0.leftViewMode = .always
//    }
//    
//    let pwtext = UILabel().then {
//        $0.text = "비밀번호"
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
// 
//    }
//    
    let pwTextField =  CrabTextField(titleText: "비밀번호", placeholder: "비밀번호를 입력해주세요", isHidden: false)
//    let pwtextfield = pwTextField().then {
//        $0.placeholder = "비밀번호를 입력하세요"
//        $0.layer.borderWidth = 2.0
//        $0.layer.cornerRadius = 10
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 14)
//        if let palceColor = UIColor(named: "palce") {
//            $0.layer.borderColor = palceColor.cgColor
//        }
//        
//        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 11.95, height: $0.frame.height))
//        $0.leftView = leftPaddingView
//        $0.leftViewMode = .always
//    }
    
    
//    let pwcheckTextField = UITextField().then {
//        $0.placeholder = "비밀번호를 다시 입력하세요"
//        
//        //titleLabel.font = UIFont(name: "SuncheonR", size: 12.0)
//        
//        $0.textColor = .textcolor
//        $0.layer.borderWidth = 2.0
//        $0.layer.cornerRadius = 10
//        if let palceColor = UIColor(named: "palce") {
//            $0.layer.borderColor = palceColor.cgColor
//        }
//        $0.backgroundColor = .white
//        
//        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 11.95, height: $0.frame.height))
//        $0.leftView = leftPaddingView
//        $0.leftViewMode = .always
//        
//    }
    let loginbutton = UIButton().then {
        $0.setTitle("로그인", for: .normal) // 텍스트 설정
        $0.setTitleColor(.white, for: .normal) //
        
        $0.backgroundColor = .dglgcolor
        $0.layer.cornerRadius = 10
        
        if let customFont = UIFont(name: "WantedSans-Medium", size: 16) {
            $0.titleLabel?.font = customFont
        }
    }
    
    let customview = UIView().then {
        $0.backgroundColor = .white
    }
    
    let eyeButton = UIButton().then {
        $0.setImage(.eye, for: .normal)
        
    }
    let eyeButton2 = UIButton().then {
        $0.setImage(.eye, for: .normal)
        
    }
    let signupbutton = UIButton().then {
        $0.setTitle("계정이 없으신가요? 대게에 회원가입하세요.", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.ChangePointColor(targetStringList: ["회원가입"], color: .dglgcolor)
      
        if let customFont = UIFont(name: "WantedSans-Medium", size: 16) {
            $0.titleLabel?.font = customFont
        }

        //$0.changePointColor(targetStringList: ["회원가입"], color: .blue)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .backgroundcolor
        signupbutton.addTarget(self, action: #selector(signupbuttontapp), for: .touchUpInside)

    }
    
    @objc func signupbuttontapp() {
//        let signupVC = SignupViewController()
//        if let navigationController = navigationController {
//            navigationController.pushViewController(signupVC, animated: true)
//        } else {
//            present(signupVC, animated: true, completion: nil)
//        }
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        layout()
    }
    func layout() {
        [
            customview,
            logoimage
            
            
        ].forEach {view.addSubview($0) }
        
        [
            explainLabel,
            idTextField,
            eyeButton,
            pwTextField,
            eyeButton2,
//            idtext,
//            pwtext,
            logotext,
            loginbutton,
            signupbutton
            
            
        ].forEach {customview.addSubview($0) }
        
        explainLabel.snp.makeConstraints {
            $0.top.equalTo(logotext.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
        }
        
        logoimage.snp.makeConstraints {
            $0.top.equalToSuperview().inset(53)
            $0.centerX.equalToSuperview()
            $0.width.height.equalTo(100)
        }
        
        idTextField.snp.makeConstraints {
            $0.top.equalToSuperview().inset(207)
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
        
        pwTextField.snp.makeConstraints {
            $0.top.equalToSuperview().inset(327)
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
        
        
        customview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(161)
            $0.left.right.equalToSuperview().inset(41)
            $0.width.equalTo(308)
            $0.height.equalTo(599)
            
        }
        
        eyeButton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(338)
            $0.centerY.equalToSuperview()
            $0.right.equalToSuperview().inset(31)
            $0.width.equalTo(27.4)
            $0.height.equalTo(18.29)
            
        }
        
//        idtext.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(184)
//            $0.height.equalTo(19)
//            $0.left.equalToSuperview().inset(20)
//            $0.right.equalToSuperview().inset(246)
//            
//        }
//        pwtext.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(304)
//            $0.height.equalTo(20)
//            $0.left.equalToSuperview().inset(19)
//            $0.right.equalToSuperview().inset(233)
//            
//        }
        
        logotext.snp.makeConstraints {
            $0.top.equalToSuperview().inset(52)
            $0.height.equalTo(38)
            $0.right.equalToSuperview().inset(126)
        }
        loginbutton.snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(128)
            $0.height.equalTo(41)
            $0.left.right.equalToSuperview().inset(20)
        }
        
        signupbutton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(513)
            $0.left.right.equalToSuperview().inset(17)
            $0.height.equalTo(19)
        }
    }
}

