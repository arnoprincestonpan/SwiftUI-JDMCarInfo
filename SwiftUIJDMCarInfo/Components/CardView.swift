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
                    
                        ZStack{
                            Circle()
                                .fill()
                            
                            Circle()
                                .stroke(.yellow)
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "car.rear.road.lane")
                                    .fontWeight(.black)
                                    .font(.system(size: 32))
                                    .foregroundStyle(
                                        LinearGradient(colors: [.red, .yellow], startPoint: .top, endPoint: .bottom)
                                    )
                            }
                        }//: ZSTACK
                        .frame(width: 56, height: 56)
                        
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
