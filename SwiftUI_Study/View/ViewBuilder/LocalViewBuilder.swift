//
//  LocalViewBuilder.swift
//  SwiftUI_Study
//
//  Created by SNPLAB on 12/21/23.
//

import SwiftUI

struct LocalViewBuilder: View {
    enum ViewType {
        case one, two, three
    }
    
    let type: ViewType
    
    var body: some View {
        VStack {
            headerSection
        }
    }
    
    @ViewBuilder private var headerSection: some View {
        switch type {
        case .one:
            view_1
        case .two:
            view_2
        case .three:
            view_3
        }
    }
    
    private var view_1: some View {
        Text("One")
    }
    
    private var view_2: some View {
        VStack {
            Text("Two")
            Image(systemName: "heart.fill")
        }
    }
    
    private var view_3: some View {
        Image(systemName: "heart.fill")
    }
}
