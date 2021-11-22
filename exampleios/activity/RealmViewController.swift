//
//  RealmViewController.swift
//  exampleios
//
//  Created by TRIAL on 22/11/21.
//

import UIKit

class RealmViewController: UIViewController {
    let txNama: UITextField = UITextField(frame: CGRect(x: 95, y: 150, width: 250, height: 40))
    override func viewDidLoad() {
        super.viewDidLoad()
     tampilTextfield()
    }
    func tampilTextfield(){
      
        txNama.layer.borderWidth = 1
        txNama.layer.borderColor = UIColor.systemBlue.cgColor
        txNama.layer.cornerRadius = 15
        self.view.addSubview(txNama)
        
       
    }

}
