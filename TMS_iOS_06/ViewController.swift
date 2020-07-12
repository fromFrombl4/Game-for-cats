//
//  ViewController.swift
//  TMS_iOS_06
//
//  Created by Roman Dod on 7/8/20.
//  Copyright © 2020 Roman Dod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    weak var viewV: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let firstView = self.createViewWithButton()
        view.addSubview(firstView)
        
        firstView.accessibilityIdentifier = "first" //self.randomString(length: 1)
        viewV = firstView
        
    }
    
    @objc func buttonPressed() {
        
        let buttonPressed = self.createViewWithButton()
        view.addSubview(buttonPressed)

        hideActiveView(viewV!)
        
//        if hideActiveView(viewV!) == nil{
//            viewV?.accessibilityIdentifier = "first"
//            return
//        }
        
        
    }
    
    
    func createViewWithButton() -> UIView{
        
        
        let firstView = UIView()
        
        
        let maxX: CGFloat = view.bounds.width - 50
        let maxY: CGFloat = view.bounds.height - 50
        
        firstView.frame = CGRect(x: CGFloat.random(in: 0...maxX), y: CGFloat.random(in: 0...maxY), width: 50, height: 50)
        firstView.layer.cornerRadius = 25
        firstView.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        
        let firstViewButton = UIButton.init(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        firstViewButton.layer.cornerRadius = 25
        firstView.addSubview(firstViewButton)
        
        firstViewButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return firstView
    }
    
    

    func hideActiveView(_ aimView: UIView){
        if aimView.accessibilityIdentifier == "first"{ //self.randomString(length: 1){
            aimView.removeFromSuperview()
        } else {
            print("cant find the view!")
        }

    }
    
    
//    func randomString(length: Int) -> String {
//      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
//      return String((0..<length).map{ _ in letters.randomElement()! })
//    }
    
//    let arr = ["first", "second"]
}

