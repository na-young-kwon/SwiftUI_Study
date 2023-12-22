//
//  View + Extension.swift
//  SwiftUI_Study
//
//  Created by SNPLAB on 12/22/23.
//

import SwiftUI

extension View {
    
    // 조건에 따라 뷰를 on / off
    @ViewBuilder
    func overlayIf<T: View>(
        _ condition: Bool,
        _ content: () -> T,
        alignment: Alignment = .center
    ) -> some View {
        if condition {
            self.overlay(alignment: alignment, content: content)
        } else {
            self
        }
    }
    
    // 조건에 따라 두 개의 다른 뷰 보여주기
    @ViewBuilder
    func overlayTwo<T: View, U: View>(
        _ condition: Bool,
        _ firstContent: () -> T,
        else secondContent: () -> U,
        alignment: Alignment = .center
    ) -> some View {
        if condition {
            self.overlay(alignment: alignment, content: firstContent)
        } else {
            self.overlay(alignment: alignment, content: secondContent)
        }
    }
}
