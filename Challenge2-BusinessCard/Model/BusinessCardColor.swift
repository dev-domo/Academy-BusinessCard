//
//  BusinessCardColor.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftData
import SwiftUI

@Model
class BusinessCardColor {
    var red: Double
    var green: Double
    var blue: Double
    var alpha: Double
    
    init(
        red: Double,
        green: Double,
        blue: Double,
        alpha: Double
    ) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
    
    convenience init(color: Color) {
        let component = color.component
        self.init(
            red: component.red,
            green: component.green,
            blue: component.blue,
            alpha: component.alpha
        )
    }
    
    convenience init(dto: BusinessCardColorDTO) {
        self.init(
            red: dto.red,
            green: dto.green,
            blue: dto.blue,
            alpha: dto.alpha
        )
    }
    
    var toColor: Color {
        Color(red: red, green: green, blue: blue, opacity: alpha)
    }
    
    func toDTO() -> BusinessCardColorDTO {
        .init(
            red: red,
            green: green,
            blue: blue,
            alpha: alpha
        )
    }
}
