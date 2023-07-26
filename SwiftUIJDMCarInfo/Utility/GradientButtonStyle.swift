//
//  GradientButtonStyle.swift
//  SwiftUIJDMCarInfo
//
//  Created by Arno Pan on 2023-07-26.
//

import Foundation
import SwiftUI

//struct GradientButton: ButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration
//            .label
//    }
//} // Basic Setup for Gradient Button Style

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 28)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [.gray, .white], startPoint: .top, endPoint: .bottom)
                :
                    LinearGradient(colors: [.white, .gray], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(36)
    }
}
