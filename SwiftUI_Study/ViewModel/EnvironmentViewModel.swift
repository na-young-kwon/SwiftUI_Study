//
//  EnvironmentViewModel.swift
//  SwiftUI_Study
//
//  Created by SNPLAB on 12/21/23.
//

import Foundation

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}
