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
    var _margin: CGFloat = 50
    var n : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func drawClick(_ sender: AnyObject) {
        for v in view.subviews{
            if v is UIImageView{
                v.removeFromSuperview()
            }
        }
        if tf_num.text != "" {
            print("text = \((tf_num.text!))")
            n = Int(tf_num.text!)!
            if n > 1 {
                for rowIndex in 0..<n {
                    for colIndex in 0..<n {
                        let image = UIImage(named: "Image")
                        let point = UIImageView(image: image)
                        point.center = CGPoint(x: _margin + CGFloat(rowIndex) * spaceBetweenX(num: n), y: 2*_margin + CGFloat(colIndex) * spaceBetweenY(num: n))
                        // point.tag = rowIndex*10 + colIndex + 100
                        self.view.addSubview(point)
                    }
                }
            } else if n == 1 {
                let image = UIImage(named: "Image")
                let point = UIImageView(image: image)
                point.center = CGPoint(x: self.view.bounds.size.width/2 , y: self.view.bounds.size.height/2)
                self.view.addSubview(point)
            } else {
                print("try again")
            }
            
        } else {
            print("input something")
        }
    }
    func spaceBetweenX(num: Int) -> CGFloat {
        let space = (self.view.bounds.size.width - 2*_margin)/CGFloat(num-1)
        return space
    }
    func spaceBetweenY(num: Int) -> CGFloat {
        let space = (self.view.bounds.size.height - 3*_margin)/CGFloat(num-1)
        return space
    }
}
