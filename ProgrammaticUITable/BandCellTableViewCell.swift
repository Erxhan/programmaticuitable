//
//  BandCellTableViewCell.swift
//  ProgrammaticUITable
//
//  Created by Erxhan Selmani on 01/01/2019.
//  Copyright © 2019 Erxhan Selmani. All rights reserved.
//

import UIKit

class BandCellTableViewCell: UITableViewCell {
    
    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.setCellShadow()
        return view
    }()
    
    let pictureView: UIImageView = {
        let picture = UIImageView()
        picture.contentMode = .scaleAspectFit
        return picture
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        backgroundColor = UIColor(r: 245, g: 245, b: 245)
        
        addSubview(cellView)
        cellView.addSubview(pictureView)
        cellView.addSubview(titleLabel)
        
        cellView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 4, paddingLeft: 8, paddingBottom: 4, paddingRight: 8)
        
        pictureView.setAnchor(top: nil, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
        pictureView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        
        titleLabel.setAnchor(top: nil, left: pictureView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 40)
        titleLabel.centerYAnchor.constraint(equalTo: pictureView.centerYAnchor).isActive = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
