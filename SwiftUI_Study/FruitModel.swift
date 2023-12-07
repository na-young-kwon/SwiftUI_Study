//
//  FruitModel.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/07.
//

import Foundation


struct FruitModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let count: Int
}
