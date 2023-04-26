//
//  FooterView.swift
//  Files
//
//  Created by Mohan K on 23/11/22.
//

import Foundation

import UIKit


class TableFooter:  UITableViewHeaderFooterView{
    
    static let identifier = "TableFooter"
    
   
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Select File"
        label.textColor = .systemBlue

        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private let sublabel: UILabel = {
        let label = UILabel()
        label.text = "Thanks Visit Again"
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 18, weight: .light)
        label.textAlignment = .center
        return label
    }()
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier:  reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(sublabel)
        contentView.backgroundColor = .systemTeal
    }
    
    required init?(coder: NSCoder) {
//        super.init(coder: coder)
        fatalError()
    }
   
    override func layoutSubviews() {
       super.layoutSubviews()
        label.sizeToFit()
        sublabel.sizeToFit()
        
        let width = contentView.frame.size.width
        let height = contentView.frame.size.height
        label.frame = CGRect(x: 0, y: 0, width: width, height: height/2)
        sublabel.frame = CGRect(x: 0, y: height/2, width: width, height: height/2)
    }
}
