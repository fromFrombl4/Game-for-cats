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
        
        let firstView = self.createViewWithButton()
        view.addSubview(firstView)
        
        
        
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        
        hideActiveView()
        
        let buttonPressed = self.createViewWithButton()
        view.addSubview(buttonPressed)
        
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
        
        viewV = firstView
        
        return firstView
    }
    
    

    func hideActiveView(){
        
        viewV?.removeFromSuperview()
        viewV = nil
        
    }
    
}

