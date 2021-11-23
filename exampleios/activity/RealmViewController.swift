//
//  RealmViewController.swift
//  exampleios
//
//  Created by TRIAL on 22/11/21.
//

import UIKit
import RealmSwift

class RealmViewController: UIViewController {
    let txNama: UITextField = UITextField(frame: CGRect(x: 95, y: 150, width: 250, height: 40))
    let realm = try! Realm()
    override func viewDidLoad() {
        super.viewDidLoad()
     tampilTextfield()
        addButtonProses()
    }
    func tampilTextfield(){
      
        txNama.layer.borderWidth = 1
        txNama.layer.borderColor = UIColor.systemBlue.cgColor
        txNama.layer.cornerRadius = 15
        self.view.addSubview(txNama)
        
        let lbPsn = UILabel(frame: CGRect(x: 20,
                                            y: 150,
                                            width: 50,
                                            height: 40))
        lbPsn.text = "Pesan"
        self.view.addSubview(lbPsn)
    }
    func addButtonProses(){
        let button = UIButton(frame: CGRect(x: 95,
                                            y: 200,
                                            width: 250,
                                            height: 50))
            button.setTitle("Simpan",
                                for: .normal)
            button.setTitleColor(.white,
                                     for: .normal)
            button.setTitleColor(.systemRed, for: .highlighted)
            button.backgroundColor = .systemBlue
            button.layer.cornerRadius = 15
            button.addTarget(self, action: #selector(self.simpan), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func simpan(){

        let simpanData = dtbsRealm()
        simpanData.Nama = txNama.text!
       
        realm.beginWrite()
        realm.add(simpanData)
        try! realm.commitWrite()
        
        tampil()
    }
    func tampil(){
        let tampilData = realm.objects(dtbsRealm.self)
        var no = 1
        for dtNama in tampilData{
            let nm = dtNama.Nama
            print("\(no) Nama : \(nm)")
            no += 1
        }
        txNama.text = ""
    }
}

class dtbsRealm: Object {
    @objc dynamic var Nama: String=""
 
}
