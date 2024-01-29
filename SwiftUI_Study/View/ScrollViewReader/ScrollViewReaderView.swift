//
//  ScrollViewReaderView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/29/24.
//

import SwiftUI

struct ScrollViewReaderView: View {
    @Namespace var topID
    @Namespace var bottomID // 얜 어떻게 쓰는걸가
    @State var isTapped = false
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                
                Button("아래로 스크롤") {
                    withAnimation {
                        isTapped.toggle()
                        proxy.scrollTo(bottomID)
                    }
                }
                .id(topID) // id 부여
                
                VStack {
                    ForEach(0..<100) { i in
                        color(fraction: Double(i) / 100)
                            .frame(height: 32)
                        
                        if isTapped {
                            LazyVStack {
                                Text("이상한걸 보여드리겠습니다.")
                                Text("눈뜨고 지켜봐주세요!")
                                Text("버튼은 어디에..?")
                            }
                        }
                    }
                }
                
                Button("위로 스크롤") {
                    withAnimation {
                        proxy.scrollTo(topID)
                    }
                }
                .id(bottomID) // 버튼에 달아도 됨
                
                
                Text("여기로 이동")
                    .id(bottomID) // 바텀 id 부여
            }
        }
    }
}

func color(fraction: Double) -> Color {
    Color(red: fraction, green: 1 - fraction, blue: 0.5)
}

#Preview {
    ScrollViewReaderView()
}
