//
//  CardCreationGuideView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct CardCreationGuideView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            Text("새로운 명함을 만들어 보세요")
                .font(.title3.bold())
            
            Text("카드를 탭하여 정보를 입력할 수 있습니다")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}
