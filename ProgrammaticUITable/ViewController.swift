//
//  ViewController.swift
//  ProgrammaticUITable
//
//  Created by Erxhan Selmani on 01/01/2019.
//  Copyright © 2019 Erxhan Selmani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let songs = MusicData.songsList
    let bands = MusicData.bandsList
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.separatorStyle = .none
        tv.allowsSelection = false
        return tv
    }()
    
    let bandCellId = "bandCellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Chart Five"
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.darkGray,
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)
        ]
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(BandCellTableViewCell.self, forCellReuseIdentifier: bandCellId)
        
        view.addSubview(tableView)
        tableView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Top Songs"
        }
        return "Top Bands"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 1 {
            return songs.count
        }
        return bands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: bandCellId, for: indexPath) as! BandCellTableViewCell
        
        if indexPath.section == 1 {
            cell.pictureView.image = UIImage(named: songs[indexPath.item].image!)
            cell.titleLabel.text = songs[indexPath.item].title
        }
        cell.pictureView.image = UIImage(named: bands[indexPath.item].image!)
        cell.titleLabel.text = bands[indexPath.item].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
