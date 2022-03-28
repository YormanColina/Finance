//
//  OnBoardingStepsViewController.swift
//  Finanzas
//
//  Created by Jyferson Colina on 11/03/22.
//

import UIKit

class OnBoardingStepsViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var onBoaringImage: UIImageView!
    
    var item: OnBoardingItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuateUI()
    }
    
    private func configuateUI() {
        titleLabel.text = item?.title
        descriptionLabel.text = item?.description
        onBoaringImage.image = UIImage(named: item?.imageName ?? "")
        
    }
}
