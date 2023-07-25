//
//  CardView.swift
//  SwiftUIJDMCarInfo
//
//  Created by Arno Pan on 2023-07-21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        
        ZStack{
            // MARK: - BACKGROUND
            CustomBackgroundView()
                .padding()
            
            VStack{
                // MARK: - HEADER
                
                VStack{
                    HStack{
                        Text("Drifting")
                            .fontWeight(.black)
                            .font(.system(size: 56))
                            .foregroundStyle(
                                LinearGradient(colors: [.customBrownDark, .yellow , .customBlueMedium], startPoint: .topTrailing, endPoint: .bottomTrailing)
                            )
                            .shadow(radius: 4)
                    
                        Button {
                            
                        } label: {
                            CustomButtonView()
                        }
                        
                    }
                }
                
                // MARK: - MAIN CONTENT
                
                ZStack{
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
                
                // MARK: - FOOTER
                
            }//: VSTACK
        }//: ZSTACK
    } //: CARD
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
