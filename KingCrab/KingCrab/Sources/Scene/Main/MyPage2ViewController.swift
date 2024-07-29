import UIKit
import SnapKit
import Then

class MyPage2ViewController: UIViewController {
    
    let logoimage = UIImageView().then {
        $0.image = .logo
    }

    let camerimage = UIImageView().then {
        $0.image = .camera
    }
    let pwtextfield = UITextField().then {
        $0.placeholder = "dudwo._"
        $0.layer.borderWidth = 2.0
         $0.layer.cornerRadius = 10
         if let gray300 = UIColor(named: "gray300") {
             $0.layer.borderColor = gray300.cgColor
         }
         $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
         let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: $0.frame.height))
        $0.leftView = leftPaddingView
         $0.leftViewMode = .always
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
    let curcle = UIView().then {
        $0.layer.cornerRadius = 70
        $0.backgroundColor = .gray100
    }
        
    let saveview = UIView().then {
        $0.backgroundColor = .main
        $0.layer.cornerRadius = 10
        $0.backgroundColor = .main500
    }
    
    let customview = UIView().then {
        $0.backgroundColor = .main100
    }
    
    let savelabel = UILabel().then {
        $0.text = "저장"
        $0.textColor = .white
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)  
    }
    let idlable = UILabel().then {
        $0.text = "아이디"
        $0.textColor = .black
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 20)
    }
    let customeview1 = UIView().then{
        $0.backgroundColor = .white

    
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowOffset = CGSize(width: 0, height: 2)
        $0.layer.shadowOpacity = 0.3
        $0.layer.shadowRadius = 4
        $0.layer.cornerRadius = 22
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
  
    }
 
 

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        layout()
    }
    func layout() {
        [
            
        
            customview,
            customeview1,
            
            
        ].forEach {view.addSubview($0) }
        [
            logoimage,
            textlabel,
            textlabel1,
            
            
            
           
        
        ].forEach {customview.addSubview($0) }
        [
            
        
            curcle,
            camerimage,
            pwtextfield,
            idlable,
            
            saveview
            
            
            
        ].forEach {customeview1.addSubview($0) }
        
        [
            savelabel
        ].forEach {saveview.addSubview($0)}
       
        
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
        
        idlable.snp.makeConstraints {
            $0.height.equalTo(24)
            $0.left.equalToSuperview().inset(38)
            $0.top.equalToSuperview().inset(264)
            $0.right.equalToSuperview().inset(246)
        }
        pwtextfield.snp.makeConstraints {
            $0.top.equalToSuperview().inset(292)
            $0.left.right.equalToSuperview().inset(40)
            $0.height.equalTo(40)
        }
        
        camerimage.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.top.equalToSuperview().inset(72)
            $0.left.equalToSuperview().inset(120)
        }
        
        textlabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(10)
            $0.left.equalToSuperview().inset(55)
            $0.right.equalToSuperview().inset(298)
        }
        
        saveview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(12)
            $0.left.equalToSuperview().inset(256)
            $0.right.equalToSuperview().inset(12)
            $0.height.equalTo(32)
        }
        
        savelabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        textlabel1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(13)
            $0.right.equalToSuperview().inset(12)
        }
        
        curcle.snp.makeConstraints {
            $0.width.height.equalTo(140)
            $0.top.equalToSuperview().inset(52)
            $0.left.equalToSuperview().inset(100)
            
        }
        customeview1.snp.makeConstraints {
            $0.width.equalTo(340)
            $0.height.equalTo(380)
            $0.top.equalToSuperview().inset(152)
            $0.left.right.equalToSuperview().inset(25)
        }
        
       
    }

}


