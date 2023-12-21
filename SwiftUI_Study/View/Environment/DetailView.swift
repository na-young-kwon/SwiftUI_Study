//
//  DetailView.swift
//  SwiftUI_Study
//
//  Created by SNPLAB on 12/21/23.
//

import SwiftUI

struct DetailView: View {
    let selectedItem: String
    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                // FinalView(viewModel: viewModel)
                FinalView() // 뷰모델 전달해주지 않아도 됨
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
            
        }
    }
}

//#Preview {
//    DetailView()
//}
