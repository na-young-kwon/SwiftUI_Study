//
//  ThirdView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/18/24.
//

import SwiftUI

struct ThirdView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .background(.random)
    }
}

#Preview {
    ThirdView(text: "text")
}
