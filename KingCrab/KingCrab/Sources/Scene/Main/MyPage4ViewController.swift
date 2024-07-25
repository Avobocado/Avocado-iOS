
import UIKit
import SnapKit
import Then

class MyPage4ViewController: UIViewController {
    
    let logoimage = UIImageView().then {
        $0.image = .logo
    }
    
    let kingcraptext = UILabel().then {
        $0.text = "대게"
        $0.textColor  = .white
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 20)
    }
    
    
    let idtext = UILabel().then {
        $0.text = "dudwo._"
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
        $0.textColor = .white
    }
    
    let pinkview = UIView().then{
        $0.backgroundColor = .main100

    }
    
    
let saveview = UIView().then {
    $0.backgroundColor = .main500
    $0.layer.cornerRadius = 10
}
    
    let savelabel = UILabel().then {
        $0.text = "저장"
        $0.textColor = .white
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 16)
    }
    let whiteview = UIView().then{
        $0.backgroundColor = .white
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowOffset = CGSize(width: 0, height: 2)
        $0.layer.shadowOpacity = 0.3
        $0.layer.shadowRadius = 4
        $0.layer.cornerRadius = 22
    
    }
    //로고
    //대게 텍스트
    //작은 dudwo
    //커텀뷰 핑크
    // 저장버틎
    //커텀뷰 흰색
    //커텀뷰 이미지?
    let camerimage = UIImageView().then {
        $0.image = .camera
    }
    let idtextfield = UITextField().then {
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
 
        
   
   

   
    
 
  
    let idlable = UILabel().then {
        $0.text = "아이디"
        $0.textColor = .black
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 20)
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
            
        
            
            pinkview
            
        ].forEach {view.addSubview($0) }
        [
            logoimage,
            kingcraptext,
            idtext,
            whiteview
            
            
            
           
        
        ].forEach {pinkview.addSubview($0) }
        [
            
        
        
            camerimage,
            idtextfield,
       
            savelabel,
            saveview,
            
            
            
            
        ].forEach {whiteview.addSubview($0)}
        [
            
            idlable
        ].forEach{saveview.addSubview($0)}
            
        
        
    
        
        logoimage.snp.makeConstraints {
            $0.height.equalTo(32)
            $0.left.equalToSuperview().inset(12)
            $0.top.equalToSuperview().inset(6)
            $0.right.equalToSuperview().inset(346)
            
        }
        
        whiteview.snp.makeConstraints {
            
            $0.height.equalTo(180)
            $0.bottom.equalToSuperview().offset(-315)
            $0.top.equalTo(additionalSafeAreaInsets).inset(105)
            $0.left.right.equalToSuperview().inset(25)
            
        
        }
        
        pinkview.snp.makeConstraints {
            $0.width.equalTo(390)
            $0.height.equalTo(187)
            $0.top.equalToSuperview().inset(48)
        }
        
        idlable.snp.makeConstraints {
            $0.height.equalTo(24)
            $0.left.equalToSuperview().inset(38)
            $0.top.equalToSuperview().inset(264)
            $0.right.equalToSuperview().inset(246)
        }
        idtextfield.snp.makeConstraints {
            $0.top.equalToSuperview().inset(292)
            $0.left.right.equalToSuperview().inset(40)
            $0.height.equalTo(40)
        }
        
        camerimage.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.top.equalToSuperview().inset(72)
            $0.left.equalToSuperview().inset(120)
        }
        
        kingcraptext.snp.makeConstraints {
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
            $0.top.equalToSuperview().inset(6)
            $0.left.equalToSuperview().inset(22)
            $0.right.equalToSuperview().inset(22)
            $0.height.equalTo(19)
        }
        
        idtext.snp.makeConstraints {
            $0.top.equalToSuperview().inset(13)
            $0.right.equalToSuperview().inset(12)
        }
 
       
    }

}


