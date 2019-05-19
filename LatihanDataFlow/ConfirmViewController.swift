//
//  ConfirmViewController.swift
//  LatihanDataFlow
//
//  Created by Elisabeth Jessica Valencia on 16/05/19.
//  Copyright © 2019 Elisabeth Jessica Valencia. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {
    var foo :String!
    
    @IBOutlet weak var namaLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namaLabel.text = foo
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
