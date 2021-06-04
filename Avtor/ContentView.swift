//
//  ContentView.swift
//  Avtor
//
//  Created by user on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var nmail = ""
    @State var npas = ""
    var body: some View {
        
        ZStack {
            VStack {
                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width:184, height: 184, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.bottom,50)
                
              
                  

                Text("EMAIL")
                    .fontWeight(.bold)
                    .frame(width: 350, height: 0, alignment: .leading)
                    .font(.custom("Arial", size: 12))
                    .foregroundColor(.black)
                    .padding(.top,10)
           
                
                
                HStack {
                    Image(systemName: "envelope")
                        
                        .font(.custom("Arial", size: 20))
                        .foregroundColor(.gray)
                        
                        .padding()
                    TextField("name@email.com",text:$nmail)
                        .font(.custom("Arial", size: 16))
                        
                    
                }
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(UIColor.gray).opacity(1),lineWidth:1))
                .padding(.horizontal,20)
                
                
                Text("PASSWORD")
                    .bold()
                    .frame(width: 350, height: 0, alignment: .leading)
                    .font(.custom("Arial", size: 12))
                    .foregroundColor(.black)
                    .padding(.top,30)
                
                HStack {
                    
                    Image(systemName: "lock")
                        .font(.custom("Arial", size: 20))
                        .foregroundColor(.gray)
                        .padding()
                    TextField("********",text:$npas)
                        .font(.custom("Arial", size:16))
                        .padding()
                }.border(Color.gray)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(UIColor.gray).opacity(1),lineWidth:1))
                .padding(.horizontal,20)
                
                Button(action: {
                    
                }
                , label: {
                    Text("SIGN UP")
                        .frame(width: 350, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.custom("Arial", size: 12))
                        .foregroundColor(.white)
                        .background(Color(.blue))
                        .cornerRadius(100)
                        .padding(.top,40)
                })
                HStack {
                    Text("Already have an account?")
                        .font(.custom("Arial", size: 12))
                        .foregroundColor(.black)
                    
                    Text("Login")
                        .font(.custom("Arial", size: 12))
                        .foregroundColor(.blue)
                        .padding()
                }
                
            }
            
        }.ignoresSafeArea()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
