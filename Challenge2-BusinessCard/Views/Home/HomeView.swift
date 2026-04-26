//
//  HomeView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftData
import SwiftUI

struct HomeView: View {
    @Environment(\.modelContext) private var context
    @State private var searchingNickname: String = ""
    @State private var isPresented: Bool = false
    @Query private var cards: [BusinessCard]
    
    var body: some View {
        
    }
}

#Preview {
    HomeView()
}
