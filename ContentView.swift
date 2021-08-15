//
//  ContentView.swift
//  UI-285
//
//  Created by nyannyan0328 on 2021/08/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    
                    
                    Image("p1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400)
                        .cornerRadius(10)
                    
                    
                    Text("Nature")
                        .font(.title.bold())
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                .padding()
               
                
                
            }
            .navigationTitle("Lesentry")
        }
        .overlay(Home())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
