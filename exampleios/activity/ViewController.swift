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
        btnGps()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dataSeg = segue.destination as? SegueViewController else { return }
        dataSeg.Pesan = txPesan.text!
        
    }
    func btnGps(){
        let lebar = self.view.bounds.width - 150
        let widthLayar = self.view.bounds.width
        let button = UIButton(frame: CGRect(x: widthLayar/2 - lebar/2,
                                            y: 250,
                                            width: lebar,
                                            height: 50))
            button.setTitle("GPS",
                                for: .normal)
            button.setTitleColor(.white,
                                     for: .normal)
            button.setTitleColor(.systemRed, for: .highlighted)
            button.backgroundColor = .systemBlue
            button.layer.cornerRadius = 15
            button.addTarget(self, action: #selector(self.sgGps), for: .touchUpInside)
        self.view.addSubview(button)
    }
    @objc public func sgGps(){
        self.performSegue(withIdentifier: "segLatLong", sender: self)
        }
}
