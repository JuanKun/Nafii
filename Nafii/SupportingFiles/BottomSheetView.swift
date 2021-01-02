//
//  BottomSheetView.swift
//  Nafii
//
//  Created by Juansyah - on 01/01/21.
//

import SwiftUI

struct BottomSheet : View {
    
    @State var txt = ""
    @Binding var offset : CGFloat
    var value : CGFloat
    
    var body: some View{
        
        VStack{
            
            Capsule()
                .fill(Color.gray.opacity(0.5))
                .frame(width: 50, height: 5)
                .padding(.top)
                .padding(.bottom,5)
            
            HStack(spacing: 15){
                Text("Favourite").font(.caption).bold()
                Spacer(minLength: 0)
                Button(action:{
                    print("Show all")
                }){
                    Text("Show All").font(.caption)
                }
            }.padding(.horizontal,screenWidth*0.05)
            
            Rectangle().fill(Color.gray)
                .frame(width: screenWidth*0.95, height: 1)
                .padding(.leading,screenWidth*0.05)
            
            
            VStack{
                
               
            }
            
            
//            ScrollView(.vertical, showsIndicators: false, content: {
//
//                LazyVStack(alignment: .leading, spacing: 15, content: {
//                    ForEach(1...15, id: \.self) { count in
//
//                        Text("Searched Place")
//
//                        Divider()
//                            .padding(.top,10)
//                    }
//                })
//                .padding()
//                .padding(.top)
//            })
        }
        .background(BlurView(style: .systemMaterial))
        .cornerRadius(15)
    }
}

struct BlurView : UIViewRepresentable {
    
    var style : UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView{
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
        
    }
}
