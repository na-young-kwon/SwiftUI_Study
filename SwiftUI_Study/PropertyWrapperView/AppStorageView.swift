//
//  AppStorageView.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/07.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("userName") var currentUserName: String?
    
    var body: some View {
        VStack {
            Text("유저이름: \(currentUserName ?? "")")
            Button("저장") {
                let name = "zoe"
                currentUserName = name
            }
        }
        
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
