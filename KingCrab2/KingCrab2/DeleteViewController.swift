import UIKit
import Then
import SnapKit

class DeleteViewController: UIViewController {
    
    let pinkbackview = CustomView().then {
        $0.backgroundColor = .main100
    }
    
    let fiximage = UIImageView().then {
        $0.image = .fix
    }
    
    let deleteimage = UIImageView().then {
        $0.image = .delete
    }
    
    let textfield1 = UITextField().then {
      
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 20)
        $0.attributedPlaceholder = NSAttributedString(string: "도휘쨩의 대마고 인생", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
    }
    
    let lineview = UIView().then {
        $0.backgroundColor = .gray300
    }

    let grayview = GrayView().then {
        $0.layer.borderColor = UIColor.gray300.cgColor
        $0.layer.borderWidth = 2
        $0.backgroundColor = .gray50
    }
        let customview = UIView().then {
        $0.layer.borderWidth = 2
        $0.layer.borderColor = UIColor.gray300.cgColor
    }
    
    let whiteview = WhiteView().then {
        $0.layer.borderColor = UIColor.gray300.cgColor
        $0.layer.borderWidth = 2
    }
    

    let answertextfield = UITextField().then {
    
    
//        let leftpaddingview = UIView(frame: CGRect(x: 0, y: 0, width: 12, height:$0.frame.height))
//               $0.leftView = leftpaddingview
//              $0.leftViewMode = .always
//         }
        $0.backgroundColor = .gray50
        $0.layer.cornerRadius = 10
        $0.placeholder = "답글달기"
   
    }

    let vview = UIView().then {
        $0.backgroundColor = .white
       
    }
    let deletebutton = UIButton().then {
        $0.setTitle("삭제", for: .normal) // 버튼 제목 설정
        $0.setTitleColor(.white, for: .normal) // 버튼 제목 색상 설정
        $0.titleLabel?.font = UIFont(name: "WantedSans-SemiBold", size: 16)
        $0.backgroundColor = .main500// 배경색 설정
    
    //    $0.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
    }
    
    let cancelButton = UIButton().then {
        $0.setTitle("취소", for: .normal) // 버튼 제목 설정
        $0.setTitleColor(.white, for: .normal) // 버튼 제목 색상 설정
        $0.titleLabel?.font = UIFont(name: "WantedSans-SemiBold", size: 16)
        $0.backgroundColor = .gray300// 배경색 설정


    }

    
    let textfield = UITextField().then {
        $0.placeholder = "ㅋㅋㅋㅋㅋ"
        let placeholderColor = UIColor(named: "gray400") ?? UIColor.gray
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: placeholderColor
        ]
        $0.attributedPlaceholder = NSAttributedString(string: $0.placeholder ?? "", attributes: attributes)
        $0.font = UIFont.systemFont(ofSize: 14)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.alpha = 0.8

    }
 
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        layout()
    }
    
    func layout() {
        [
            pinkbackview,
            grayview,
            whiteview,
            textfield,
            textfield1,
            customview,
            lineview,
            deleteimage,
            fiximage,
            answertextfield,
         
      
      
           
           
            
        ].forEach { view.addSubview($0) }
        [
          
            deletebutton,
            cancelButton
            
        ].forEach { vview.addSubview($0)}
        
        deletebutton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(145)
            $0.left.equalToSuperview().inset(138)
            $0.right.equalToSuperview().inset(34)
            $0.height.equalTo(36)
        }
        cancelButton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(145)
            $0.left.equalToSuperview().inset(34)
            $0.height.equalTo(36)
            $0.right.equalToSuperview().inset(138)
        }
        pinkbackview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(50)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(44)
        }
   
        
        customview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(212)
            $0.height.equalTo(500)
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(130)
        }
        
        vview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(280)
            $0.left.right.equalToSuperview().inset(69)
            $0.height.equalTo(212)
        }
      
     
   

        grayview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(100)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(44)
        }
        
        whiteview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(160)
            $0.width.equalTo(395)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(52)
        }
    
        deleteimage.snp.makeConstraints {
            $0.top.equalToSuperview().inset(174)
            $0.left.equalToSuperview().inset(318)
            $0.right.equalToSuperview().inset(48)
            $0.height.equalTo(24)
        }
        
        fiximage.snp.makeConstraints {
            $0.top.equalToSuperview().inset(176)
            $0.left.equalToSuperview().inset(358)
            $0.right.equalToSuperview().inset(12)
            $0.height.equalTo(20)
        }
        
     
    
//        lineview.snp.makeConstraints {
//            $0.left.right.equalToSuperview()
//            $0.bottom.equalToSuperview().inset(256)
//            $0.height.equalTo(2)
//        }

        textfield1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(174)
            $0.left.equalToSuperview().inset(117)
            $0.right.equalToSuperview().inset(97)
            $0.height.equalTo(24)
        }
    }
    
    @objc func okButtonTapped() {
        let fixViewController = FixPageViewController()
        navigationController?.pushViewController(fixViewController, animated: true)
    }
}
