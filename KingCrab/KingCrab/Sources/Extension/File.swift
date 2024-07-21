import UIKit

public extension UIButton {

    func ChangePointColor(targetStringList: [String], color: UIColor) {
        // 버튼의 현재 타이틀 텍스트 가져오기
        guard let fullText = self.title(for: .normal) else {
            return
        }
        
        // AttributedString 생성
        let attributedString = NSMutableAttributedString(string: fullText)

        // 각 타겟 문자열에 대해 색상 적용
        targetStringList.forEach {
            let range = (fullText as NSString).range(of: $0)
            if range.location != NSNotFound {
                attributedString.addAttributes([.foregroundColor: color], range: range)
            }
        }

        // 버튼의 타이틀 텍스트에 AttributedString 설정
        self.setAttributedTitle(attributedString, for: .normal)
    }
}
