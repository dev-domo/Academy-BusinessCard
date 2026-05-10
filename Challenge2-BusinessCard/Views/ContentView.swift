//
//  ContentView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var cards: [BusinessCard]

    var body: some View {
        NavigationView {
            if cards.isEmpty {
                SplashView()
            } else {
                CompleteView()
            }
        }
    }
}
