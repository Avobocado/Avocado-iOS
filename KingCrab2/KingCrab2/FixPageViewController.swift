import UIKit
import Then
import SnapKit

class FixPageViewController: UIViewController {
    
    let pinkbackview = CustomView().then {
        $0.backgroundColor = .main100
    }
    
    let textfield1 = UITextField().then {
        $0.placeholder = "제목을 입력하세요"
        $0.font = UIFont(name: "WantedSans-SemiBold", size: 20)
    }
    
    let grayview = GrayView().then {
        $0.layer.borderColor = UIColor.gray300.cgColor
        $0.layer.borderWidth = 2
        $0.backgroundColor = .gray50
    }
    lazy var customview = UIView().then {
        $0.backgroundColor = .white
        $0.layer.addBorder([.bottom], color: .red, width: 2)
        $0.frame.size.width = 180
        $0.frame.size.height = 300
        
        
    }
    let lineview = UIView().then {
        $0.backgroundColor = .gray300
    }
    let whiteview = WhiteView().then {
        $0.layer.borderColor = UIColor.gray300.cgColor
        $0.layer.borderWidth = 2
    }
    let cancelButton = UIButton().then {
        $0.setTitle("취소", for: .normal) // 버튼 제목 설정
        $0.setTitleColor(.white, for: .normal) // 버튼 제목 색상 설정
        $0.titleLabel?.font = UIFont(name: "WantedSans-SemiBold", size: 16)
        $0.backgroundColor = .gray300// 배경색 설정

    //    $0.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside) // 버튼 클릭 이벤트 추가
    }


    let okbutton = UIButton().then {
        $0.setTitle("완료", for: .normal) // 버튼 제목 설정
        $0.setTitleColor(.white, for: .normal) // 버튼 제목 색상 설정
        $0.titleLabel?.font = UIFont(name: "WantedSans-SemiBold", size: 16)
        $0.backgroundColor = .main500// 배경색 설정
        // 모서리 둥글게
    //    $0.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside) // 버튼 클릭 이벤트 추가
    }
    let textfield = UITextField().then {
        $0.placeholder = "내용을 입력하세요"
        let placeholderColor = UIColor(named: "gray400") ?? UIColor.gray // 기본 색상 설정

        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: placeholderColor
        ]
        
        $0.attributedPlaceholder = NSAttributedString(string: $0.placeholder ?? "", attributes: attributes)
        
        $0.font = UIFont.systemFont(ofSize: 14) // 폰트 설정 (선택 사항)
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
            pinkbackview,
            grayview,
            whiteview,
            textfield,

            customview,
            cancelButton,
            okbutton,
            lineview,
            textfield1,
        
        ].forEach { view.addSubview($0) }
        customview.addSubview(textfield1)
        
        pinkbackview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(50)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(44)
        }
        customview.snp.makeConstraints {
            $0.top.equalToSuperview().inset(212)

            
        }
        lineview.snp.makeConstraints {
            $0.left.right.equalToSuperview()
            $0.top.equalToSuperview().inset(602)
            $0.height.equalTo(2)
        }
        textfield1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(174)
            $0.left.equalToSuperview().inset(117)
            $0.right.equalToSuperview().inset(120)
            $0.height.equalTo(24)
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
        okbutton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(736)
            $0.left.equalToSuperview().inset(290)
            $0.right.equalToSuperview().inset(20)
            $0.height.equalTo(36)
        }
        cancelButton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(736)
            $0.left.equalToSuperview().inset(20)
            $0.right.equalToSuperview().inset(290)
            $0.height.equalTo(36)
        }
        textfield.snp.makeConstraints {
            $0.top.equalTo(whiteview.snp.bottom).offset(20)
            $0.right.left.equalToSuperview().inset(35)
            $0.height.equalTo(40)
        }
        
        textfield1.snp.makeConstraints {
            $0.top.equalToSuperview().inset(174)
            $0.left.equalToSuperview().inset(117)
            $0.right.equalToSuperview().inset(120)
            
            $0.height.equalTo(24)
            
        }
    }
}

extension CALayer {
    func addBorder(_ arr_edge: [UIRectEdge], color: UIColor, width: CGFloat) {
        for edge in arr_edge {
            let border = CALayer()
            switch edge {
            case UIRectEdge.top:
                border.frame = CGRect.init(x: 0, y: 0, width: frame.width, height: width)
                break
            case UIRectEdge.bottom:
                border.frame = CGRect.init(x: 0, y: frame.height - width, width: frame.width, height: width)
                break
            case UIRectEdge.left:
                border.frame = CGRect.init(x: 0, y: 0, width: width, height: frame.height)
                break
            case UIRectEdge.right:
                border.frame = CGRect.init(x: frame.width - width, y: 0, width: width, height: frame.height)
                break
            default:
                break
            }
            border.backgroundColor = color.cgColor
            self.addSublayer(border)
        }
    }
}