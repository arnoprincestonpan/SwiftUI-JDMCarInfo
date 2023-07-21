//
//  CustomBackgroundView.swift
//  SwiftUIJDMCarInfo
//
//  Created by Arno Pan on 2023-07-21.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            // MARK: - 3. DEPTH
            Color.customGreenMedium
                .cornerRadius(40)
                .offset(y:12)
            
            // MARK: - 2. LIGHT
            Color.customBrownDark
                .cornerRadius(40)
                .offset(y:4)
                .opacity(0.85)
            
            // MARK: - 1. SURFACE
            LinearGradient(colors: [Color.customBrownLight, Color.blue, Color.customBrownMedium], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)
        }//: ZSTACK
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
