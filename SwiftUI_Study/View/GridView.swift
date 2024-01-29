//
//  GridView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/29/24.
//

import SwiftUI

struct GridView: View {
    private let column: [GridItem] = [ // 3열 그리드를 만들겠다
        GridItem(.adaptive(minimum: 100, maximum: 100), spacing: 10), // 첫번째 열
        GridItem(.flexible(minimum: 100), spacing: 100), // 두번째 열
        GridItem(.fixed(50), spacing: 0) // 세번째 열
    ]
    
    var body: some View {
        
        LazyVGrid(
            columns: column, // 정의한 GridItem 사용
            spacing: 40
        ) {
            ForEach(0..<15, id: \.self) { index in
                Text(String(index))
                    .frame(width: 50)
                    .background(Color.red)
            }
        }
        .background(Color.orange)
    }
}

#Preview {
    GridView()
}
