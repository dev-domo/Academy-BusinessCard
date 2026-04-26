//
//  CardInformationView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct CardInformationView: View {
    
    let card: InitialBusinessCard
    
    var body: some View {
        VStack {
            HStack {
                Text(card.nickname)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white)
                
                Spacer()
            }
            
            HStack {
                Text(card.name)
                    .font(.headline)
                    .foregroundStyle(.white)
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Text(card.phoneNumber)
                    .font(.caption)
                    .foregroundStyle(.white)
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Text(card.field)
                    .font(.caption)
                    .foregroundStyle(.white)
            }
        }
        .frame(width: 280, height: 130)
    }
}
