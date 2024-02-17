//
//  MoexCalculatorApp.swift
//  MoexCalculator
//
//  Created by Глеб Капустин on 17.02.2024.
//

import SwiftUI

@main
struct MoexCalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView(viewModel: CalculatorViewModel())
        }
    }
}
