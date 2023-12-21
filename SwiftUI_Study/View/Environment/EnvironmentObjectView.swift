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
    }
}

#Preview {
    EnvironmentObjectView()
}
