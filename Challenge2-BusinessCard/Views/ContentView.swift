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
                TabView {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("홈")
                        }
                    
                    EditView(card: cards.first!)
                        .tabItem {
                            Image(systemName: "pencil.line")
                            Text("수정")
                        }
                }
            }
        }
    }
}
