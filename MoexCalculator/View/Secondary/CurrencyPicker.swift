//
//  CurrencyPicker.swift
//  MoexCalculator
//
//  Created by Глеб Капустин on 18.02.2024.
//

import SwiftUI

struct CurrencyPicker: View {

    @Binding var currency: Currency
    
    let onChange: (Currency) -> Void
    
    var body: some View {
        
        Picker("", selection: $currency) {
                        
            // ForEach - элемент SwiftUI, который генерирует набор View
            // из коллекции значений с уникальными идентификаторами
            ForEach(Currency.allCases) { currency in
                Text(currency.rawValue.uppercased())
            }
        }
        .pickerStyle(.wheel)
        .onChange(of: currency) { oldValue, newValue in
            onChange(newValue)
        }
    }
}

#Preview {
    CurrencyPicker(currency: Binding<Currency>(
        get: { .RUR },
        set: { _ = $0 }
    ), onChange: {_ in })
}
