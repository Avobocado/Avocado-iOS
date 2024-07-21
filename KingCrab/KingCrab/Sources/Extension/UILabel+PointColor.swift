import UIKit

public extension UILabel {

    func changePointColor(targetStringList: [String], color: UIColor) {
//        let fullText = text ?? ""
//        let attributedString = NSMutableAttributedString(string: fullText)
//        let range = (fullText as NSString).range(of: targetString)
//        attributedString.addAttribute(.font, value: font, range: range)
//        attributedText = attributedString
        
        let fullText = text ?? ""
        let attributedString = NSMutableAttributedString(string: fullText)

        targetStringList.forEach {
            let range = (fullText as NSString).range(of: $0)
            attributedString.addAttributes([.foregroundColor: color as Any], range: range)
        }
        attributedText = attributedString
    }
}
