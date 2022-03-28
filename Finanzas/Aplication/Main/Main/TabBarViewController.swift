//
//  TabBarViewController.swift
//  Finanzas
//
//  Created by Jyferson Colina on 14/03/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
    }
    
    func customButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = tabBar.frame.origin.y - 32
        menuButtonFrame.origin.x = view.bounds.width / 2 - menuButton.frame.size.width / 2
        menuButton.frame = menuButtonFrame
        menuButton.backgroundColor = UIColor(named: "GreenColor")
        menuButton.layer.cornerRadius = 8
        menuButton.setImage(UIImage(named: "PlusButtom"), for: .normal)
        view.addSubview(menuButton)
        
        menuButton.addTarget(self, action: #selector(menuButtonActions(sender:)), for: .touchUpInside)
    }
    
    @objc private func menuButtonActions(sender: UIButton) {
        selectedIndex = 2
    }
}


