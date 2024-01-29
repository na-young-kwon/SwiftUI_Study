//
//  MovingTabView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/29/24.
//

import SwiftUI

enum TabOption: CaseIterable {
    case a
    case b
    case c
    case d
    case e
    
    var description: String {
        switch self {
        case .a:
            "hello"
        case .b:
            "world"
        case .c:
            "this"
        case .d:
            "is"
        case .e:
            "something"
        }
    }
}

struct MovingTabView: View {
    @State private var currentTab: TabOption = .a
    @Namespace var namespace
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(TabOption.allCases, id: \.self) { tab in
                    TabItem(currentTab: $currentTab, namespace: namespace, tab: tab)
                }
            }
            .padding(.horizontal)
        }
        .background(Color.white)
        .frame(height: 40)
    }
}

struct TabItem: View {
    @Binding var currentTab: TabOption
    let namespace: Namespace.ID
    let tab: TabOption
    
    var body: some View {
        
        Button {
            currentTab = tab
        } label: {
            VStack {
                Text(tab.description)
                if currentTab == tab {
                    Color.black.frame(height: 2)
                        .matchedGeometryEffect(id: "underline", in: namespace.self)
                } else {
                    Color.clear.frame(height: 2)
                }
            }
            .animation(.spring(), value: currentTab)
        }
        .buttonStyle(.plain)
    }
}


#Preview {
    MovingTabView()
}
