//
//  PrimeView.swift
//  Nafii
//
//  Created by Juansyah - on 30/12/20.
//

import SwiftUI
import Mapbox

struct PrimeView: View {
    @State var findString : String = "Jakarta"
    @State var tappedBox1 : Bool = true
    @State var tappedBox2 : Bool = false
    @State var offset : CGFloat = 0
    @State var isEditingActive : Bool = true
    var body: some View {
        NavigationView{
            ZStack {
                MapView().centerCoordinate(.init(latitude: 21.421911, longitude: 39.871824)).zoomLevel(16)
                
                VStack{
                    ZStack{
                        Rectangle().fill(Color.clear).frame(width: screenWidth, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        TopView(findString: $findString, tappedBox1: $tappedBox1, tappedBox2: $tappedBox2, isEditingActive: $isEditingActive)
                    }
                    
                    Spacer()
                    ThreeButton().padding(.leading,screenWidth*0.8)
                    Spacer().frame(height: 150)
                }
                
                GeometryReader{reader in
                            
                                VStack{
                                    
                                    BottomSheet(offset: $offset, value: (-reader.frame(in: .global).height + 150))
                                        .offset(y: reader.frame(in: .global).height - 140)
                                    // adding gesture....
                                        .offset(y: offset)
                                        .gesture(DragGesture().onChanged({ (value) in
                                            
                                            withAnimation{
                                                
                                                // checking the direction of scroll....
                                                
                                                // scrolling upWards....
                                                // using startLocation bcz translation will change when we drag up and down....
                                                
                                                if value.startLocation.y > reader.frame(in: .global).midX{
                                                    
                                                    if value.translation.height < 0 && offset > (-reader.frame(in: .global).height + 150){
                                                        
                                                        offset = value.translation.height
                                                    }
                                                }
                                                
                                                if value.startLocation.y < reader.frame(in: .global).midX{
                 
                                                    if value.translation.height > 0 && offset < 0{
                                                        
                                                        offset = (-reader.frame(in: .global).height + 150) + value.translation.height
                                                    }
                                                }
                                            }
                                            
                                        }).onEnded({ (value) in
                                            
                                            withAnimation{
                                                
                                                // checking and pulling up the screen...
                                                
                                                if value.startLocation.y > reader.frame(in: .global).midX{
                                                    
                                                    if -value.translation.height > reader.frame(in: .global).midX{
                                                        
                                                        offset = (-reader.frame(in: .global).height + 150)
                                                        
                                                        return
                                                    }
                                                    
                                                    offset = 0
                                                }
                                                
                                                if value.startLocation.y < reader.frame(in: .global).midX{
                                                    
                                                    if value.translation.height < reader.frame(in: .global).midX{
                                                        
                                                        offset = (-reader.frame(in: .global).height + 150)
                                                        
                                                        return
                                                    }
                                                    
                                                    offset = 0
                                                }
                                            }
                                        }))
                                }
                            }
                            .ignoresSafeArea(.all, edges: .bottom)
            }
            .navigationBarTitle("Nafii", displayMode: .inline).navigationBarColor(colorActive)
            
        }.background(Color(red: 128/255, green: 195/255, blue: 117/255))
    }
}

struct PrimeView_Previews: PreviewProvider {
    static var previews: some View {
        PrimeView()
    }
}
