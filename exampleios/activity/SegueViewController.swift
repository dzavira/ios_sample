//
//  SegueViewController.swift
//  exampleios
//
//  Created by TRIAL on 08/11/21.
//

import UIKit

class SegueViewController: UIViewController {

    @IBOutlet weak var dataPesan: UILabel!
    var Pesan: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        dataPesan.text = Pesan
        
    }
    


}
