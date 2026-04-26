//
//  ShareState.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

enum ShareState: Equatable {
    
    case before
    case connected(device: String)
    case complete
    case connectFailed
    case shareFailed
    
    var message: String {
        switch self {
        case .before:
            "명함을 공유할 기기를 찾는 중..."
        case .connected(let device):
            "\(device)와 명함을 공유할까요?"
        case .complete:
            "명함을 성공적으로 전송했어요!"
        case .connectFailed:
            "상대와의 연결에 실패했어요"
        case .shareFailed:
            "명함 공유에 실패했어요"
        }
    }
    
    var image: Image {
        switch self {
        case .before:
            .init(systemName: "dot.radiowaves.left.and.right")
        case .connected:
            .init(systemName: "person.line.dotted.person")
        case .complete:
            .init(systemName: "checkmark.circle")
        case .connectFailed, .shareFailed:
            .init(systemName: "xmark.circle")
        }
    }
    
    var imageRatio: (width: CGFloat, height: CGFloat) {
        switch self {
        case .before:
            (100, 70)
        case .connected:
            (100, 45)
        case .complete, .connectFailed, .shareFailed:
            (70, 70)
        }
    }
    
    var imageColor: Color {
        switch self {
        case .before, .connected:
            .blue
        case .complete:
            .green
        case .connectFailed, .shareFailed:
            .red
        }
    }
}
