//
//  ViewController.swift
//  Files
//
//  Created by Mohan K on 22/11/22.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
   

    private let tableView: UITableView = {
        let table =  UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
        table.register(TableHeader.self,forHeaderFooterViewReuseIdentifier: "header")
        table.register(TableFooter.self,forHeaderFooterViewReuseIdentifier: "footer")
        return table
    }()
    
    private let models = [
        "file 1",
        "file 2",
        "file 3",
        "file 4",
        "file 5"
    ]
       
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        cell.imageView?.image = UIImage(named: "image3")
        return cell
    }
    
    //Footer
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard section > 0 else {
            return nil
        }
        let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: "footer")
        return footer
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return section == 1 ? 100 : 0
        
    }
    
    //Header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        guard section == 0 else {
//            return nil
//        }
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? TableHeader
        header?.configure(text: "Files ?")

        return header
    }
     
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return section == 0 ? 200 : 0
        
    }
}

        
