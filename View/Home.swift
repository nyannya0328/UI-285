//
//  Home.swift
//  Home
//
//  Created by nyannyan0328 on 2021/08/15.
//

import SwiftUI

struct Home: View {
    @State var startAnimation = false
    @State var bowAnimation = false
    @State var growAnimation = false
    @State var showPlusAnimation = false
    @State var isFinishedAnimation = false
    @State var plusBgGrolw = false
    var body: some View {
        HStack{
            
            
            if !isFinishedAnimation{
                
                ZStack{
                    
                 Color("BG")
                        .ignoresSafeArea()
                    
                    
                    GeometryReader{proxy in
                        
                        
                        let size = proxy.size
                        
                        
                        ZStack{
                            
                            
                            Circle()
                                .trim(from: 0, to: bowAnimation ? 0.5 : 0)
                                .stroke(
                                   
                                
                                LinearGradient(colors: [
                                
                                
                                    Color("Gradient1"),
                                    Color("Gradient2"),
                                    Color("Gradient3"),
                                    Color("Gradient4"),
                                    Color("Gradient5"),
                                    Color("BG"),
                                    Color("BG")
                                
                                
                                
                                ], startPoint: .leading, endPoint: .trailing)
                                ,style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .miter)
                                
                                
                                )
                                .overlay(
                                
                                
                                Circle()
                                    .fill(.white.opacity(0.05))
                                    .frame(width: 6, height: 6)
                                    .overlay(
                                    
                                    Circle()
                                        .fill(.white)
                                        .opacity(growAnimation ? 0.2 : 0.1)
                                        .rotationEffect(.init(degrees: bowAnimation ? 180 : 0))
                                        .opacity(bowAnimation ? 1 : 0)
                                    
                                    )
                                    .blur(radius: 2.5)
                                    .frame(width: (size.width / 2) / 2)
                                    .offset(x: (size.width / 2) / 2)
                                
                                
                                
                                )
                                .frame(width: size.width / 2.0, height: size.height / 2.0)
                                .rotationEffect(.init(degrees: -200))
                                .offset(y: 10)
                                
                            
                            HStack(spacing:-20){
                                
                                
                                
                                
                                Image("disney")
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: size.width / 1.9, height: size.height / 1.9)
                                    .opacity(bowAnimation ? 1 : 0)
                                
                                
                                Image("plus")
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                                    .background(
                                    
                                        ZStack{
                                            
                                            
                                            Capsule()
                                                .fill(.white.opacity(0.3))
                                                .frame(width: 20, height: 20)
                                                .blur(radius: 2)
                                            
                                            
                                            Capsule()
                                                .fill(.white.opacity(0.3))
                                                .frame(width: 35, height: 35)
                                                .blur(radius: 2)
                                        }
                                     .opacity(plusBgGrolw ? 1 : 0)
                                    
                                    
                                    )
                                    .scaleEffect(showPlusAnimation ? 1 : 0)
                            }
                            .foregroundColor(.white)
                            
                            
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                    }
                    
                }
                .onAppear {
                       
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        
                        
                        withAnimation(.linear(duration: 2)){
                            
                            bowAnimation.toggle()
                        }
                        
                        
                    
                         
                            
                        withAnimation(.linear(duration: 1).repeatForever(autoreverses: true)){
                                
                                
                                growAnimation.toggle()
                            }
                            
                            
                   
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            
                            
                            withAnimation(.spring()){
                                
                                
                               
                                startAnimation.toggle()
                            }
                            
                            
                            
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            
                            
                            
                            
                            withAnimation(.spring()){
                                
                                
                                showPlusAnimation.toggle()
                                startAnimation.toggle()
                                
                            }
                            
                            
                            }
                            
                            
                            
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
                                
                                
                                withAnimation(.linear(duration: 0.5)){
                                    
                                    
                                    plusBgGrolw.toggle()
                                    
                                    
                                    
                                }
                                
                                
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
                                    
                                    
                                    withAnimation(.linear(duration: 0.5)){
                                        
                                        
                                        plusBgGrolw.toggle()
                                        
                                        
                                        
                           
                                
                                
                                }
                                
                                
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    
                                    withAnimation{
                                        
                                        
                                        isFinishedAnimation.toggle()
                                        
                                    }
                                    
                                    
                                }
                                
                                }
                            
                                
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                    
                        
                        
                        
                        
                    }
                }
                    
            
              
                          
                           
                      
                  
                   
            }
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
