//
//  EnvironmentObjectView.swift
//  SwiftUI_Study
//
//  Created by SNPLAB on 12/21/23.
//

import SwiftUI

struct EnvironmentObjectView: View {
    @StateObject var viewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item, viewModel: viewModel)
                    } label: {
                        Text(item)
                    }
                }
            }
        }
        // 이 뷰와 연결된 모든 뷰에 viewModel을 선택적으로 불러올 수 있게 됨
        .environmentObject(viewModel)
    }
}

#Preview {
    EnvironmentObjectView()
}
