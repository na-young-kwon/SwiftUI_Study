//
//  HeaderView.swift
//  SwiftUI_Study
//
//  Created by SNPLAB on 12/21/23.
//

import SwiftUI

struct HeaderViewGeneric<Content: View>: View {
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
          content
            
            RoundedRectangle(cornerRadius: 5) // 구분선
                .frame(height: 2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}
