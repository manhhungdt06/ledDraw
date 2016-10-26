//
//  ViewController.swift
//  ledDraw
//
//  Created by techmaster on 10/26/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_num: UITextField!
    var _margin: CGFloat = 100
    var n : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func drawClick(_ sender: AnyObject) {
        print("text = \((tf_num.text!))")
        n = Int(tf_num.text!)!
        for rowIndex in 0..<n {
            for colIndex in 0..<n {
                let image = UIImage(named: "Image")
                let point = UIImageView(image: image)
                point.center = CGPoint(x: _margin + CGFloat(rowIndex) * spaceBetween(num: n), y: CGFloat(colIndex)*50 + _margin)
                self.view.addSubview(point)
            }
        }
    }
    func spaceBetween(num: Int) -> CGFloat {
        let space = (self.view.bounds.size.width - 2*_margin)/CGFloat(num-1)
        return space
    }
}
