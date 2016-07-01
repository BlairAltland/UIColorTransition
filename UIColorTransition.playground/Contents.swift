//
//  UIColorTransition
//
//  Created by Blair Altland on 6/30/16.
//  Copyright © 2016 Blairaltland. All rights reserved.
//
import UIKit

extension UIColor {
    
    func transitionToColorByPercentage(end:UIColor, percentage:CGFloat) -> UIColor {
        
        var percentageConstant = max(0, percentage)
        percentageConstant = min(1, percentage)
        
        let startColor = self.cgColor.components
        let endColor = end.cgColor.components
        
        let r: CGFloat = CGFloat(startColor![0] + (endColor![0] - startColor![0]) * percentageConstant)
        let g: CGFloat = CGFloat(startColor![1] + (endColor![1] - startColor![1]) * percentageConstant)
        let b: CGFloat = CGFloat(startColor![2] + (endColor![2] - startColor![2]) * percentageConstant)
        let a: CGFloat = CGFloat(startColor![3] + (endColor![3] - startColor![3]) * percentageConstant)
        
        return UIColor.init(red:r, green:g, blue:b, alpha:a)
    }
    
}

let startColor = UIColor.red()
let endColor = UIColor.green()

for color in 1 ... 10 {
    
    let percentage: Double = Double(color)/10
    startColor.transitionToColorByPercentage(end: endColor, percentage: CGFloat(percentage))
}
