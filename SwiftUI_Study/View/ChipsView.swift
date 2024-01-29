//
//  ChipsView.swift
//  SwiftUI_Study
//
//  Created by nayoung kwon on 1/29/24.
//

import SwiftUI

struct ChipsView: View {
    var body: some View {
        VStack {
            ChipsContainerView()
        }.padding()
    }
}

struct ChipsView_Previews: PreviewProvider {
    static var previews: some View {
        ChipsView()
    }
}


struct ChipsContainerView: View {
    @State var totalHeight: CGFloat = .zero // 뷰의 총 높이를 저장하는 변수, 뷰의 높이를 동적으로 조정하기 위해 사용
    let verticalSpacing: CGFloat = 4 // 행 간 간격을 지정하기 위해 사용하는 변수
    let horizontalSpacing: CGFloat = 4 // 칩스 즉, 뷰 간 간격을 지정하는 변수
    let items: [Chips] = Chips.items
    var sortedItems: [Chips] { // 우선순위로 재정렬한 배열
        items.sorted { $0.priority < $1.priority}
    }
    
    var body: some View {
        
        var width = CGFloat.zero
        var height = CGFloat.zero
        
         // 칩스 뷰가 배치될 수 있는 영역의 넓이를 파악하고 이 정보들을 가지고 칩스뷰를 동적배치한다
        GeometryReader { geometry in // 뷰를 전체적으로 감싸 사용함으로서 부모 뷰의 크기 정보를 얻어온다
            ZStack(alignment: .topLeading) { //  중요 - 정렬을 topLeading으로 설정해야 함
                ForEach(sortedItems, id: \.id) { chip in
                    ChipView(title: chip.title)
                        .id(chip.id)
                    
                        // 동적 배치를 위해 사용
                        .alignmentGuide(.leading) { view in // 세로 방향 위치 조정
                            
                            // width가 부모의 width를 초과하면 (geometry - 부모, view - 자식 인듯?)
                            if abs(width - view.width) > geometry.size.width {
                                width = 0
                                height -= view.height
                                height -= verticalSpacing
                            }
                            let result = width
                            
                            // 마지막 뷰가 배치되면 다시 width와 height을 초기화 시킨다
                            if chip == sortedItems.last {
                                width = 0
                            } else {
                                width -= view.width
                                width -= horizontalSpacing
                            }
                            return result
                        }
                    
                        .alignmentGuide(.top) { _ in // 세로 방향 위치 조정
                            let result = height
                            
                            if chip == sortedItems.last {
                                height = 0
                            }
                            return result
                        }
                }
            }
            .background(
                GeometryReader { geometry in
                    Color.clear.onAppear {
                        totalHeight = geometry.size.height
                    }
                }
            )
        }
        .frame(height: totalHeight)
    }
}

struct Chips: Equatable {
    let id: UUID
    let title: String
    let priority: Int
    
    init(id: UUID = UUID(), title: String, priority: Int = 0) {
        self.id = id
        self.title = title
        self.priority = priority
    }
    
    static let items: [Chips] = [
      .init(title: "첫번째"),
      .init(title: "두번째", priority: 1),
      .init(title: "세번째", priority: 2),
      .init(title: "네번째", priority: 3),
      .init(title: "서른마흔다섯번째", priority: 4),
      .init(title: "여섯번째", priority: 5),
      .init(title: "일곱번째", priority: 6),
      .init(title: "여덟번째", priority: 7),
      .init(title: "아홉번째", priority: 8),
    ]
}

struct ChipView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.caption)
            .foregroundColor(.black)
            .padding(.horizontal, 10)
            .padding(.vertical, 3)
            .background(.white)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.green, lineWidth: 1)
            )
            .frame(height: 24)
    }
}
