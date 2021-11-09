//
//  ViewController.swift
//  exampleios
//
//  Created by TRIAL on 08/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txPesan: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dataSeg = segue.destination as? SegueViewController else { return }
        dataSeg.Pesan = txPesan.text!
        
    }

}

