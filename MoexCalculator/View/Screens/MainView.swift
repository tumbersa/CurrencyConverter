//
//  MainView.swift
//  MoexCalculator
//
//  Created by Глеб Капустин on 18.02.2024.
//

import SwiftUI

struct MainView: View {
    
    // Аналог ObservedObject. Создаётся в родительском объекте
    @EnvironmentObject var viewModel: CalculatorViewModel
    
    var body: some View {
        
        // Выбор состояния и отрисовка View в зависмости от состояния
        switch viewModel.state {
            
            // Индикатор загрузки
        case .loading:
            ProgressView()
            
            // Экран, который отображается при ошибке: эмоджи и текст
        case .error:
            VStack {
                Text("🤷‍♂️")
                    .font(.system(size: 100))
                    .padding()
                Text("Что-то пошло не так.\n Пожалуйста, попробуйте позже.")
                    .font(.body)
            }
            .multilineTextAlignment(.center)
            
            // Экран калькулятора, который отображается при успешной загрузке данных
        case .content:
            CalculatorView()
            
        }
    }
}


#Preview {
    MainView()
        .environmentObject(CalculatorViewModel())
}
