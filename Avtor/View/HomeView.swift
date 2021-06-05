//
//  HomeView.swift
//  Avtor
//
//  Created by user on 05.06.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HStack{
               Image(systemName: "bookmark")
                Spacer()
                Text("Social").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(systemName: "bell")
                
            }.padding()
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                ForEach(0...15, id: \.self) { _ in
                    Image("Pic")
                        .resizable()
                        .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                }
            })
        Spacer()
        }
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
