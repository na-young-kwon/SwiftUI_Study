//
//  ViewModelBootCamp.swift
//  SwiftUI_Study
//
//  Created by 권나영 on 2023/12/08.
//

import SwiftUI

struct ViewModelBootCamp: View {
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                    
                }
            }
        .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .toolbar {  // NavigationBarItems 대신 바뀐 기능 (상단 화살표 버튼)
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(
                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        })
                }
            }
        }
    }
}


struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()
    }
}
