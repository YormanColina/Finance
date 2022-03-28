//
//  OnBoardingContainerViewController.swift
//  Finanzas
//
//  Created by Jyferson Colina on 11/03/22.
//

import UIKit

class OnBoardingContainerViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var iniciarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        iniciarButton.layer.cornerRadius = 25
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "openOnBoarding",
            let destination = segue.destination as? OnBoardingViewController else {
            return
        }
        
        destination.pageControl = pageControl
    }

}
