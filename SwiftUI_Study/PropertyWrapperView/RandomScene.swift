//
//  RandomScene.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/08.
//

import SwiftUI
// 하위 뷰 (항상 새로운 데이터를 가지는 뷰)
struct RandomScreen: View { // 두번째 화면
    
    @Environment(\.dismiss) var dismiss // 현재 띄워져 있는 화면에서 나가게끔 하는 기능
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray){ fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}
