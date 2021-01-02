//
//  FirstView.swift
//  Nafii
//
//  Created by Juansyah - on 28/12/20.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Assalamualaikum..,").font(.title3)
                    Text("Welcome to Nafii").font(.title2).bold()
                }
                Spacer(minLength: 0)
            }.padding(.leading,horizontalPadding)
            
            MapView()
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct MapView: View {
    var body: some View {
        ZStack{
            Rectangle().fill(Color.blue)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer().frame(height: screenHeight*0.5)
                AddButton()
            }
        }
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
