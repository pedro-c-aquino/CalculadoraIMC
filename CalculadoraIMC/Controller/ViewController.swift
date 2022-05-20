//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by user208023 on 5/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    let imcModel = IMCModel()

    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var IMCLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView.isHidden = true
        
    }
    
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = Double(heightTextField.text ?? "") ?? 0.0
        let weight = Double(weightTextField.text ?? "") ?? 0.0
        
        let imc = imcModel.calculateIMC(height: height, weight: weight)
        
        IMCLabel.text = String(format: "%.2f", imc)
        
        let categoria = imcModel.categoriaIMC(imc: imc)
        
        resultImageView.image = UIImage(named: categoria.imagem)
        
        categoryLabel.text = categoria.categoria
        
        resultView.isHidden = false
    }
    

}

