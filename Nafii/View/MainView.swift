//
//  MainView.swift
//  Nafii
//
//  Created by Juansyah - on 28/12/20.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        NavigationView{
            
            CustomTabView()
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
        }
    }
}

struct CustomTabView : View {
    
    @State var selectedTab = "first"
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View{
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            // Using Tab View For Swipe Gestures...
            // if you dont need swipe gesture tab change means just use switch case....to switch views...
            
            TabView(selection: $selectedTab) {
                
                FirstView().tag("first")
                SecondView().tag("second")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea(.all, edges: .bottom)
            
            HStack(spacing: 0){
                ForEach(tabs,id: \.self){image in
                    
                    TabButton(image: image, selectedTab: $selectedTab)
                    
                    // equal spacing...
                    
                    if image != tabs.last{
                        
                        Spacer(minLength: 0)
                    }
                }
            }.frame(width: screenWidth*0.5, height: screenHeight*0.07)
            .padding(.horizontal,50)
            .padding(.vertical,5)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 5, y: 5)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: -5, y: -5)
            .padding(.horizontal)
            // for smaller iphones....
            // elevations...
            .padding(.bottom,edge!.bottom == 0 ? 20 : 0)
            
            // ignoring tabview elevation....
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
    }
}

// tabs...
// Image Names...
var tabs = ["first","second"]

struct TabButton : View {
    
    var image : String
    @Binding var selectedTab : String
    
    var body: some View{
        
        Button(action: {selectedTab = image}) {
            
            Image(image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color("tab") : Color.black.opacity(0.4))
                .padding()
        }.background(Color.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


