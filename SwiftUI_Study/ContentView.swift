//
//  ContentView.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/07.
//

import SwiftUI

struct ContentView: View {
    @State var displayOverlayContent: Bool = false
    
    var body: some View {
        VStack {
            Button("show and hide") {
                displayOverlayContent.toggle()
            }
            Spacer()
        }
        // 뷰 숨기기
//        .overlayIf(displayOverlayContent) {
//            Color.gray.frame(width: 300, height: 300)
//        }
        
        // 다른 뷰 보여주기
        .overlayTwo(displayOverlayContent) {
            Color.blue.frame(width: 300, height: 300)
        } else: {
            Color.red.frame(width: 300, height: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
