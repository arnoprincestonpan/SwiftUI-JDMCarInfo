//
//  CardView.swift
//  SwiftUIJDMCarInfo
//
//  Created by Arno Pan on 2023-07-21.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS
    
    func randomImage() {
        print("=== BUTTON PRESSED ===")
        print("Status: Old Image Number: \(randomNumber)")
        
        repeat {
            randomNumber = Int.random(in: 1...3)
            print("Action: Random Number Generated: \(randomNumber)")
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
        
        print("Result: New Image Number: \(imageNumber)")
        print("=== END OF BUTTON ===")
        print("\n")
    }
    
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
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
                
                // MARK: - FOOTER
                
                Button {
                    // Switch Car Image
                    randomImage()
                    
                } label: {
                    Text("More Cars")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom)
                        )
                }
                .buttonStyle(GradientButton())
            }//: VSTACK
        }//: ZSTACK
    } //: CARD
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
