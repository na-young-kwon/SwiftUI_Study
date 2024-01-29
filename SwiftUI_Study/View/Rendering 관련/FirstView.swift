//
//  FirstView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/18/24.
//

import SwiftUI

struct FirstView: View {
    @Binding var text: String
//    let text: String
    
    var body: some View {
        Text(text)
            .background(.random)

    }
}
//
//#Preview {
//    FirstView(text: .constant("first"))
//}

