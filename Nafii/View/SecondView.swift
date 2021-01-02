//
//  SecondView.swift
//  Nafii
//
//  Created by Juansyah - on 28/12/20.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Tagged Place").font(.title2).bold()
                Spacer(minLength: 0)
            }.padding(.leading,horizontalPadding)
            
            ZStack{
                Rectangle().fill(Color.blue)
            }.edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
