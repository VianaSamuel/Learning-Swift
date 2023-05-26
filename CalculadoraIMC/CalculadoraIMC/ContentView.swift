//
//  ContentView.swift
//  CalculadoraIMC
//
//  Created by Student25 on 23/05/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso : Double = 0.0
    @State private var altura : Double = 0.0
    @State private var imc : Double = 0.0
    @State private var saida : String = ""
    @State private var cor : String = "Normal"

    var body: some View {
        ZStack {
            Color(cor)
            VStack(spacing: 50){
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Peso", value: $peso, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.white)
                    .cornerRadius(5)
                TextField("Altura", value: $altura, formatter: NumberFormatter())
                    .keyboardType(.numberPad)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.white)
                    .cornerRadius(5)
                Button("Calcular"){
                    imc = peso/(pow(altura, 2))
                    switch imc {
                        case 0...18.499:
                            saida = "Baixo peso"
                            cor = "BaixoPeso"
                        
                        case 18.5...24.99:
                            saida = "Normal"
                            cor = "Normal"
                        
                        case 25...29.99:
                            saida = "Sobrepeso"
                            cor = "Sobrepeso"
                        
                        case 30...100:
                            saida = "Obesidade"
                            cor = "Obesidade"
                        
                        default:
                            saida = ""
                            cor = ""
                            
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                Text(saida)
                    .font(.title)
                Image("Tabela")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
