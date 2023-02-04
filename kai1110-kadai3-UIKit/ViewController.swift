
import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var numberText1: UITextField!
    @IBOutlet private weak var numberText2: UITextField!
    @IBOutlet private weak var swich1: UISwitch!
    @IBOutlet private weak var swich2: UISwitch!
    @IBOutlet private weak var numberLabel1: UILabel!
    @IBOutlet private weak var numberLabel2: UILabel!
    @IBOutlet private weak var result: UILabel!

    @IBAction private func calclation(_ sender: Any) {
        var number1 = Int(numberText1.text ?? "") ?? 0
        var number2 = Int(numberText2.text ?? "") ?? 0

        if swich1.isOn {
            numberLabel1.text =  "-" + String(number1)
            number1 *= -1
        }
        else {
            numberLabel1.text = String(number1)
        }

        if swich2.isOn {
            numberLabel2.text = "-" + String(number2)
            number2 *= -1
        }
        else {
            numberLabel2.text = String(number2)
        }

        result.text = String(number1 + number2)
    }
}
