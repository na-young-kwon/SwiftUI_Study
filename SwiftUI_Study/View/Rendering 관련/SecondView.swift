//
//  SecondView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/18/24.
//

import SwiftUI

struct SecondView: View {
//    let text: String
    @Binding var text: String
    
    var body: some View {
        Text(text)
            .background(.random)
    }
}

#Preview {
    SecondView(text: .constant("second"))
}
