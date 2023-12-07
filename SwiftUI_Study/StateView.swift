//
//  StateVIew.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/07.
//

import SwiftUI

struct StateView: View {
    // 값이 변경되면 뷰를 다시 그린다
    // 새로운 값이 들어오면 뷰를 다시 그려준다
    @State var count = 0
    
    var body: some View {
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing:20) {
                    Text("Title")
                    Text("Count: \(count)") // @State를 관찰하고 있다가 뷰를 새로 그린다
                    
                    HStack(spacing: 20) {
                        Button("증가") {
                            count += 1 // 값이 변하면
                        }
                    }
                    
                }
            }
        }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
