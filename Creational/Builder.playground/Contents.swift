import UIKit

protocol ThemeProtocol {
    var backGroundColor: UIColor { get }
    var textColor: UIColor { get }
}
class Theme: ThemeProtocol {
    init(backGroundColor: UIColor, textColor: UIColor) {
        self.backGroundColor = backGroundColor
        self.textColor = textColor
    }
    
    var backGroundColor: UIColor
    
    var textColor: UIColor
    
    
}

protocol ThemeBuilderProtocol {
    func setBackground(color: UIColor)
    func setText(color: UIColor)
    func createTheme() -> ThemeProtocol?
}

class ThemeBuilder: ThemeBuilderProtocol {
    
    private var backGroundColor: UIColor?
    private var textColor: UIColor?
    
    func setBackground(color: UIColor) {
        self.backGroundColor = color
    }
    
    func setText(color: UIColor) {
        self.textColor = color
    }
    
    func createTheme() -> ThemeProtocol? {
        guard let backGroundColor = backGroundColor, let textColor = textColor else { return nil }
        return Theme(backGroundColor: backGroundColor, textColor: textColor)
    }
}

let builder = ThemeBuilder()
builder.setBackground(color: .blue)
builder.setText(color: .darkGray)

let theme = builder.createTheme()
