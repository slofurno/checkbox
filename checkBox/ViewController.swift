

import UIKit

class ViewController: UIViewController {
    let rangeSlider = CheckBox(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rangeSlider.backgroundColor = UIColor.redColor()
        view.addSubview(rangeSlider)
        rangeSlider.addTarget(self, action: "rangeSliderValueChanged:", forControlEvents: .ValueChanged)
        
    }
    
    func rangeSliderValueChanged(rangeSlider: CheckBox) {
        println("Checkbox changed to :  (\(rangeSlider.checked))")
    }
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        rangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length,
            width: 50.0, height: 50.0)
    }
}