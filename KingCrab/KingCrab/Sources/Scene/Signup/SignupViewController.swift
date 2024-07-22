//import UIKit
//import SnapKit
//import Then
//
//class SignupViewController: UIViewController {
//    
//    let logoimage = UIImageView().then {
//        $0.image = .logo
//    }
//    
//    let logotext = UILabel().then {
//        $0.text = "대게"
//        $0.textColor = .dgcolor
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 32)
//    }
//    let explainLabel = UILabel().then {
//        $0.text = "대마고 게시판에 회원가입 하세요"
//        $0.textColor = .black
//        $0.changePointColor(targetStringList: ["대", "게"], color: .red)
//        $0.font = UIFont(name: "WantedSans-Medium", size: 16)
//    }
//   
//    let idtext = UILabel().then {
//        $0.text = "아이디"
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
//    }
//  
//    let idtextfield = idTextField().then {
//        $0.placeholder = "6자이상 입력해주세요"
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 14)
//        if let palceColor = UIColor(named: "palce") {
//            $0.layer.borderColor = palceColor.cgColor
//        }
//        $0.layer.borderWidth = 2.0
//        $0.layer.cornerRadius = 10
//        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height:$0.frame.height))
//        $0.leftView = leftPaddingView
//        $0.leftViewMode = .always
//    }
//    
//    let pwtext = UILabel().then {
//        $0.text = "비밀번호"
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
//    }
//    
//    let pwtextfield = pwTextField().then {
//        $0.placeholder = "비밀번호를 입력하세요"
//        $0.layer.borderWidth = 2.0
//        $0.layer.cornerRadius = 10
//        if let palceColor = UIColor(named: "palce") {
//            $0.layer.borderColor = palceColor.cgColor
//        }
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 14)
//        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 11.95, height: $0.frame.height))
//        $0.leftView = leftPaddingView
//        $0.leftViewMode = .always
//    }
//    
//    let pwtextlabel = UILabel().then {
//        $0.font = UIFont(name: "WantedSans-Medium", size: 12)
//        $0.text = "알파벳 소문자, 대문자, 특수문자 포함 8자 이상"
//        $0.font = UIFont.systemFont(ofSize: 12)
//    }
//    
//    let pwcheckTextField = UITextField().then {
//        $0.placeholder = "비밀번호를 다시 입력하세요"
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 14)
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
//    let signupbutton = UIButton().then {
//        $0.setTitle("회원가입", for: .normal) // 텍스트 설정
//        $0.setTitleColor(.white, for: .normal) //
//        
//        $0.backgroundColor = .signuptf
//        $0.layer.cornerRadius = 10
//    
//        if let customFont = UIFont(name: "WantedSans-Medium", size: 16) {
//            $0.titleLabel?.font = customFont
//        }
//        
//    }
// 
//   
//    
//    let pwchecktext = UILabel().then {
//        $0.text = "비밀번호 확인"
//        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
//    }
//    
//    let pwchecktextlabel = UILabel().then {
//        $0.font = UIFont(name: "WantedSans-Medium", size: 12)
//        $0.text = "비밀번호를 정확하게 다시 입력하세요"
//
//    }
// 
//    
//  
//    let customview = ctview()
//    
//    let eyeButton = UIButton().then {
//        $0.setImage(.eye, for: .normal)
//        
//    }
//    let eyeButton2 = UIButton().then {
//           $0.setImage(.eye, for: .normal)
//          
//       }
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.view.backgroundColor = .backgroundcolor
//        signupbutton.addTarget(self, action: #selector(signupbuttonTapped), for: .touchUpInside)
//    }
//    @objc func signupbuttonTapped() {
//        let lgvc = LoginViewController()
//        if let navigationController = navigationController {
//            navigationController.pushViewController(lgvc, animated: true)
//        } else {
//            present(lgvc, animated: true, completion: nil)
//        }
//    }
//    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        layout()
//    }
//    func layout() {
//        [
//            customview,
//            logoimage
//            
//    
//        ].forEach {view.addSubview($0) }
//        
//        [
//            explainLabel,
//            pwtextfield,
//            pwcheckTextField,
//            eyeButton,
//            idtextfield,
//            eyeButton2,
//            idtext,
//            pwtext,
//            pwchecktext,
//            logotext,
//            signupbutton,
//            pwtextlabel,
//            pwchecktextlabel
//        ].forEach {customview.addSubview($0) }
//        
//        explainLabel.snp.makeConstraints {
//            $0.top.equalTo(logotext.snp.bottom).offset(20)
//            $0.centerX.equalToSuperview()
//        }
//        
//        logoimage.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(53)
//            $0.centerX.equalToSuperview()
//            $0.width.height.equalTo(100)
//        }
//        
//        idtextfield.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(192)
//            $0.left.right.equalToSuperview().inset(20)
//            $0.height.equalTo(40)
//        }
//        
//        pwtextfield.snp.makeConstraints {
//            $0.top.equalTo(idtextfield.snp.bottom).offset(68)
//            $0.left.right.equalToSuperview().inset(20)
//            $0.height.equalTo(40)
//        }
//        
//        pwtextlabel.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(343)
//            $0.height.equalTo(14)
//            $0.left.equalToSuperview().inset(25)
//        }
//        pwcheckTextField.snp.makeConstraints {
//            $0.top.equalTo(pwtextfield.snp.bottom).offset(68)
//            $0.left.right.equalToSuperview().inset(20)
//            $0.height.equalTo(40)
//          
//        }
//        customview.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(161)
//            $0.left.right.equalToSuperview().inset(41)
//            $0.width.equalTo(308)
//            $0.height.equalTo(599)
//            
//        }
//        
//        eyeButton.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(311)
//            $0.centerY.equalToSuperview()
//            $0.right.equalToSuperview().inset(31)
//            $0.width.equalTo(27.4)
//            $0.height.equalTo(18.29)
//
//        }
//            eyeButton2.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(419)
//            $0.centerY.equalToSuperview()
//            $0.right.equalToSuperview().inset(31)
//            $0.width.equalTo(27.4)
//            $0.height.equalTo(18.29)
//
//        }
//        idtext.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(168)
//            $0.height.equalTo(19)
//            $0.left.equalToSuperview().inset(20)
//            $0.right.equalToSuperview().inset(246)
//            
//        }
//        pwtext.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(276)
//            $0.height.equalTo(20)
//            $0.left.equalToSuperview().inset(19)
//            $0.right.equalToSuperview().inset(233)
//            
//        }
//        pwchecktext.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(384)
//            $0.height.equalTo(20)
//            $0.left.equalToSuperview().inset(19)
//            $0.right.equalToSuperview().inset(202)
//            
//        }
//        
//        logotext.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(52)
//            $0.height.equalTo(38)
//            $0.right.equalToSuperview().inset(126)
//        }
//        signupbutton.snp.makeConstraints {
//            $0.bottom.equalToSuperview().inset(50)
//            $0.height.equalTo(41)
//            $0.left.right.equalToSuperview().inset(20)
//        }
//        
//        pwchecktextlabel.snp.makeConstraints {
//            $0.top.equalToSuperview().inset(451)
//            $0.left.equalToSuperview().inset(25)
//            $0.height.equalTo(14)
//        }
//    }
//}
//
//
