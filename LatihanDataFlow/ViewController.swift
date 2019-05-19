//
//  ViewController.swift
//  LatihanDataFlow
//
//  Created by Elisabeth Jessica Valencia on 16/05/19.
//  Copyright © 2019 Elisabeth Jessica Valencia. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    // bisa tambah ", UITextFieldDelegate" setelah UIViewController diatas atau tambahin extension ^^^ dibawah (lebih preffered biar rapi)
    

    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    // ini untuk bikin fungsi tombol registernya
    @IBAction func registerPressed(_ sender: UIButton) {
        if nameTextField.text == "" || phoneTextField.text == ""{
            let alert = UIAlertController(title: "Error", message: "All text field must be filled", preferredStyle: .alert)
            // yg diatas ini bikin variable alert controllernya waktu error
            
            let action = UIAlertAction(title: "OK", style: .default) { (alertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            
            alert.addAction(action)
            
            
            present(alert, animated: true, completion: nil)
            // ini yg diatas untuk munculin alertnya
            
        } else {
            performSegue(withIdentifier: "toConfirmPage", sender: self)
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ConfirmViewController {
           destination.foo = nameTextField.text
            
            
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // kalo pake delegate harus ada ini
        nameTextField.delegate = self
        
        phoneTextField.delegate = self
        
    }
}

// ^^^
extension ViewController: UITextFieldDelegate{
    
    // kalo nulis, biasakan pakai yg sudah tersedia dr sistemnya, jangan tulis sendiri
    
    // ini func supaya waktu pencet "return", pindah ke text field selanjutnya
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            phoneTextField.becomeFirstResponder()
            
            // ini func supaya waktu pencet "return", keyboardnya ilang
        } else if textField == phoneTextField {
            textField.resignFirstResponder()
            
            // setiap selesai harus di delegate di viewDidLoad
        }
        
        return true
        
    }
}

