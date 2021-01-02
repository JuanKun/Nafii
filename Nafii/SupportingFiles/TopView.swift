//
//  TopView.swift
//  Nafii
//
//  Created by Juansyah - on 01/01/21.
//

import SwiftUI

struct TopView: View {
    @Binding var findString : String
    @Binding var tappedBox1 : Bool
    @Binding var tappedBox2 : Bool
    @Binding var isEditingActive : Bool
    
    var body: some View {
        VStack{
            
            if isEditingActive
            {
                ZStack{
                    RoundedRectangle(cornerRadius: 18).fill(Color.white)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable().frame(width: 10, height: 10).scaledToFit()
                        Spacer().frame(width: 8)
                        TextField("Find", text: $findString).font(.caption).frame(height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.padding(.leading,8).padding(.trailing,8)
                    
                }.frame(height: 40)
                
                HStack{
                    
                    Text("New Point")
                        .foregroundColor(tappedBox1 == true ? Color(colorActive) : Color.black)
                        .font(.caption)
                        .frame(width: 80, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(tappedBox1 == true ? Color(colorActive) : Color(colorInactive), lineWidth: 1))
                    
                    Spacer().frame(width: 8)
                    
                    Text("All Point")
                        .foregroundColor(tappedBox2 == true ? Color(colorActive) : Color.black)
                        .font(.caption)
                        .frame(width: 80, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(tappedBox2 == true ? Color(colorActive) : Color(colorInactive), lineWidth: 1))
                    
                    Spacer(minLength: 0)
                }
            }
            else
            {
                ZStack{
                    RoundedRectangle(cornerRadius: 18).fill(Color.white)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable().frame(width: 10, height: 10).scaledToFit()
                        Spacer().frame(width: 8)
                        TextField("Find", text: $findString).font(.caption).frame(height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.padding(.leading,8).padding(.trailing,8)
                    
                }.frame(height: 40)
                
                HStack{
                    
                    Text("New Point")
                        .foregroundColor(tappedBox1 == true ? Color(colorActive) : Color.black)
                        .font(.caption)
                        .frame(width: 80, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(tappedBox1 == true ? Color(colorActive) : Color(colorInactive), lineWidth: 1))
                    
                    Spacer().frame(width: 8)
                    
                    Text("All Point")
                        .foregroundColor(tappedBox2 == true ? Color(colorActive) : Color.black)
                        .font(.caption)
                        .frame(width: 80, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(tappedBox2 == true ? Color(colorActive) : Color(colorInactive), lineWidth: 1))
                    
                    Spacer(minLength: 0)
                }
            }
            
            
        }.frame(width: screenWidth*0.9, height: 60)
    }
}
