//
//  BindingView.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/07.
//

import SwiftUI

struct BindingView: View { // 부모 뷰
    
    @State var backgroundColor: Color = Color.green // State 변수 선언
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            ButtonView(backgroundColor: $backgroundColor) // $를 통해 Binding

        }
    }
}

struct ButtonView: View { // 자식 뷰
    // state에 저장된 뷰의 상태를 다른 뷰와 공유하고 변경할 수 있다. 
    @Binding var backgroundColor: Color // @Binding을 통해 State 변수 Binding
    
    var body: some View {
        Button {
            backgroundColor = Color.orange // Binding된 변수 값 변경
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
