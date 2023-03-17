//
//  ViewController.swift
//  Projects22-24MS_100days
//
//  Created by user228564 on 3/17/23.
//

import UIKit

extension UIView {
    func bounceOut(duration: Int) {
        UIView.animate(withDuration: TimeInterval(duration)) {
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        }
    }
}

class ViewController: UIViewController {
    
    var myView: UIView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let myView = UIView()
        myView.frame = CGRect(x: self.view.bounds.midX - 75, y: self.view.bounds.midY - 75, width: 150, height: 150)
        myView.layer.cornerRadius = 10
        myView.clipsToBounds = true
        myView.layer.masksToBounds = true
        myView.backgroundColor = .systemBlue
        view.addSubview(myView)
        
        myView.bounceOut(duration: 30)
    }
}

