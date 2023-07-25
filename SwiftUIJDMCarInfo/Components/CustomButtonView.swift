//
//  CustomButtonView.swift
//  SwiftUIJDMCarInfo
//
//  Created by Arno Pan on 2023-07-25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill()
                .foregroundColor(.customGreenMedium)
            Circle()
                .stroke(
                    LinearGradient(colors: [.customBrownLight, .customBrownDark], startPoint: .top, endPoint: .bottom),
                    lineWidth: 4
                )
            Image(systemName: "car.rear.road.lane")
                .fontWeight(.black)
                .font(.system(size: 32))
                .foregroundStyle(
                    LinearGradient(colors: [.red, .yellow], startPoint: .top, endPoint: .bottom)
                )
        } //: ZSTACK
        .frame(width:58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
    }
}
