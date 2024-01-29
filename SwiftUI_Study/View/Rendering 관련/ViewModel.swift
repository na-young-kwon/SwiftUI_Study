//
//  ViewModel.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/18/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var firstText: String = "첫번째 타이틀"
    @Published var secondText: String = "두번째 타이틀"
    
    func changeFirstTitle() {
        firstText = "애플"
    }
}
