//
//  ContentView.swift
//  CacThanhPhanUI
//
//  Created by hoanglinh on 1/5/20.
//  Copyright © 2020 hoanglinh. All rights reserved.
//

import SwiftUI
struct collection:Identifiable {
    var id: String
    var subtitle,imageURL: String
}
struct ContentView: View {
    
    let collected:[collection] = [
        collection(id: "1", subtitle: "Món ngon mỗi ngày", imageURL: "1"),
        collection(id: "2", subtitle: "Ăn ngon mỗi ngày ", imageURL: "2"),
        collection(id: "3", subtitle: "Vịt tiềm này kia", imageURL: "3"),
        collection(id: "4", subtitle: "Món ngon mỗi ngày", imageURL: "4"),
        collection(id: "5", subtitle: "Món ngon mỗi ngày", imageURL: "5"),
        collection(id: "6", subtitle: "Món ngon mỗi ngày", imageURL: "6"),
        collection(id: "7", subtitle: "Món ngon mỗi ngày", imageURL: "7"),
        collection(id: "8", subtitle: "Món ngon mỗi ngày", imageURL: "8"),
        collection(id: "1", subtitle: "Món ngon mỗi ngày", imageURL: "1"),
        collection(id: "2", subtitle: "Ăn ngon mỗi ngày ", imageURL: "2"),
        collection(id: "3", subtitle: "Vịt tiềm này kia", imageURL: "3"),
        collection(id: "4", subtitle: "Món ngon mỗi ngày", imageURL: "4"),
        collection(id: "5", subtitle: "Món ngon mỗi ngày", imageURL: "5"),
        collection(id: "6", subtitle: "Món ngon mỗi ngày", imageURL: "6"),
        collection(id: "7", subtitle: "Món ngon mỗi ngày", imageURL: "7"),
        collection(id: "8", subtitle: "Món ngon mỗi ngày", imageURL: "8")
        
    ]
    
    var body: some View {
        NavigationView{
            ScrollView (.horizontal, showsIndicators: false){
                HStack (alignment: .center, spacing: 10){
                    ForEach(collected) { box in
                        collect(box: box)
                    }
                }
                Spacer()
               
            }
             
            .navigationBarTitle("MENU")
            .font(.footnote)
            .foregroundColor(Color.red)
        
        }
         
      
        
    }
     
    struct collect: View {
        let box:collection
        var body: some View {
            VStack (alignment: .leading, spacing: 10){
                Image(box.imageURL)
                    .resizable()
                    .renderingMode(.original)
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .clipped()
                    .cornerRadius(40)
                Text(box.subtitle)
                    .font(.subheadline)
                    .fontWeight(.bold)
                
                 
            }.padding(.bottom, 20)
        }
        
    }
 
}
