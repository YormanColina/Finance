//
//  AddViewController.swift
//  Finanzas
//
//  Created by Jyferson Colina on 14/03/22.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TransactionsCell", bundle: Bundle.main), forCellReuseIdentifier: "TransactionsCell")
        
        addButton.layer.cornerRadius = 25
    }
}

extension AddViewController: UITableViewDelegate {
    
}

extension AddViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionsCell", for: indexPath)
        tableView.rowHeight = 100
        return cell
    }
    
}
