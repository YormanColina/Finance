//
//  BudgetViewController.swift
//  Finanzas
//
//  Created by Jyferson Colina on 14/03/22.
//

import UIKit

class BudgetViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var animationButtons: [UIButton]!
    @IBOutlet weak var animatioonLayout: NSLayoutConstraint!
    @IBOutlet weak var viewBack: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView?.register(cell, forCellReuseIdentifier: "TransactionsCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        viewBack.layer.cornerRadius = 22
    }
    
    @IBAction func animateHeader(sender: UIButton) {
        animatioonLayout.constant = sender.frame.origin.x
            UIView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            }) { (completed) in
                self.animationButtons.forEach {
                    $0.setTitleColor( UIColor(named: "TextColor") , for: .normal)
                    sender.setTitleColor( UIColor.white , for: .normal)
                }
            }
        }
}

extension BudgetViewController: UITableViewDelegate {
    
}

extension BudgetViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "TransactionsCell", for: indexPath)
    }
}
