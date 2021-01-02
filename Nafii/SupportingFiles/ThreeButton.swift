//
//  ThreeButton.swift
//  Nafii
//
//  Created by Juansyah - on 30/12/20.
//

import SwiftUI

struct ThreeButton: View {
    var body: some View {
        HStack {
            VStack{
//                Button(action: {
//                    print("Change layout")
//                }){
//                    ZStack{
//                        Circle().fill(Color(colorActive)).frame(width: 50, height: 50)
//                        Image(systemName: "plus").frame(width: 30, height: 30).foregroundColor(.white)
//                    }
//                }
//
//                Button(action: {
//                    print("Change layout")
//                }){
//                    ZStack{
//                        Circle().fill(Color(colorActive)).frame(width: 50, height: 50)
//                        Image(systemName: "minus").frame(width: 30, height: 30).foregroundColor(.white)
//                    }
//                }
                
                Button(action: {
                    //Write Code Here
                    
                }){
                    ZStack{
                        Circle().fill(Color(colorActive)).frame(width: 50, height: 50)
                        Image(systemName: "location").frame(width: 30, height: 30).foregroundColor(.white)
                    }
                }
            }
        }.frame(width: screenWidth*0.2).padding(.trailing,horizontalPadding)
    }
}
