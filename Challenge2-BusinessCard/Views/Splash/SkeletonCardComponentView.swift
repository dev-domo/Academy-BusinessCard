//
//  SkeletonCardComponentView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct SkeletonCardComponentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            CardComponentView(
                opacity: 0.3,
                width: 100,
                height: 30
            )
            CardComponentView(
                opacity: 0.2,
                width: 80,
                height: 20
            )
            
            Spacer()
            
            CardComponentView(
                opacity: 0.2,
                width: 120,
                height: 15
            )
            
            Spacer()
            
            HStack {
                Spacer()
                
                CardComponentView(
                    opacity: 0.2,
                    width: 60,
                    height: 15
                )
            }
        }
        .padding(20)
        .frame(width: 315, height: 175)
    }
}
