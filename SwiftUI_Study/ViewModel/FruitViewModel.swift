//
//  FruitViewModel.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/08.
//

import Foundation

// 관찰가능한 객체

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = [] // 데이터가 바뀔때마다 FruitViewModel 을 다시그린다
    @Published var isLoading: Bool = false
    
    func fetFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index) // 해당 index에서 과일을 delete해주는 function
    }
}
