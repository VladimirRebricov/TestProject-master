//
//  DataViewController.swift
//  TestProject
//
//  Created by Владимир Ребриков on 29/01/2019.
//  Copyright © 2019 Владимир Ребриков. All rights reserved.
//

import UIKit


class DataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

//    @IBOutlet var titleLbl1: UILabel!
//    @IBOutlet var titleLbl2: UILabel!
//    @IBOutlet var titleLbl3: UILabel!
//    @IBOutlet var imageV1: UIImageView!
    
    @IBOutlet var dataTableView: UITableView!

    var selectedActor: ProfileElement!
   
      override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()

//        self.titleLbl1.text = selectedActor.user.albums[self.titleLbl1.tag].title
//        self.titleLbl2.text = selectedActor.user.albums[self.titleLbl2.tag].title
//        self.titleLbl3.text = selectedActor.user.albums[self.titleLbl3.tag].images!.url

    }
    
    func setupNavigationBar() {
        navigationItem.largeTitleDisplayMode = .never }



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedActor.user.albums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell") as? DataTableViewCell else { return UITableViewCell() }
        
        cell.titleLbl.text = selectedActor.user.albums[0].title
        
        return cell
    }
}

//extension AuteurDetailViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        guard let cell = tableView.cellForRow(at: indexPath) as? FilmTableViewCell else { return }
//        var film = selectedAuteur.films[indexPath.row]
//        film.isExpanded = !film.isExpanded
//        selectedAuteur.films[indexPath.row] = film
//        cell.moreInfoTextView.text = film.isExpanded ? film.plot : moreInfoText
//        cell.moreInfoTextView.textAlignment = film.isExpanded ? .left : .center
//        cell.moreInfoTextView.textColor = film.isExpanded ? UIColor(red:0.75, green:0.75, blue:0.75, alpha:1.0) : .red
//        tableView.beginUpdates()
//        tableView.endUpdates()
//        tableView.scrollToRow(at: indexPath, at: .top, animated: true)
//    }
//}
