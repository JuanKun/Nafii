//
//  DestinationRowView.swift
//  Nafii
//
//  Created by Juansyah - on 01/01/21.
//

import SwiftUI

struct DestinationRowView: View {
    @Binding var imageString : String?
    @Binding var nameString : String?
    @Binding var latlong : [Double]?
    var body: some View {
        HStack{
            if imageString == nil {
                Rectangle()
                    .fill(Color(colorActive))
                    .frame(width: 50, height: 50)
            }else{
                Image(imageString!)
                    .frame(width: 50, height: 50)
            }
            
            VStack(alignment:.leading){
                Text(nameString ?? "Unknown")
                    .font(.headline)
                
                Text("\(latlong![0]) \(latlong![1])")
                    .font(.caption)
            }
        }
    }
}
