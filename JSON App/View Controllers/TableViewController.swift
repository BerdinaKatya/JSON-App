//
//  TableViewController.swift
//  JSON App
//
//  Created by Екатерина Теляубердина on 09.09.2023.
//

import UIKit

final class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAbiliy()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    // MARK: - Private methods
    private func fetchAbiliy() {
        let abilityURL = URL(string: "https://www.dnd5eapi.co/api/ability-scores/cha")!
        URLSession.shared.dataTask(with: abilityURL) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let ability = try decoder.decode(Ability.self, from: data)
                print(ability)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
