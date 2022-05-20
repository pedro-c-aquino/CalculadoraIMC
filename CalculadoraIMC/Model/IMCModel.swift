//
//  IMCModel.swift
//  CalculadoraIMC
//
//  Created by user208023 on 5/18/22.
//

import Foundation

class IMCModel {
    
    struct Categoria {
        var categoria: String
        var imagem: String
    }
    
    var imc: Double = 0.0
    
    func calculateIMC(height: Double, weight: Double) -> Double {
        imc = weight / (height * height)
        return imc
    }
    
    func categoriaIMC(imc: Double) -> Categoria {
        if imc < 17 {
            return Categoria(categoria: "Magreza", imagem: "magreza")
        } else if imc < 18.5 {
            return Categoria(categoria: "Abaixo do peso", imagem: "abaixo")
        } else if imc < 25 {
            return Categoria(categoria: "Peso normal", imagem: "ideal")
        } else if imc < 30 {
            return Categoria(categoria: "Sobrepeso", imagem: "sobre")
        } else {
            return Categoria(categoria: "Obesidade", imagem: "obesidade")
        }
    }
    
}
