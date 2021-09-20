//
//  ContentView.swift
//  TikTokClone
//
//  Created by David Malicke on 9/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}


struct Home: View {
    
    @State var index = 0
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack(spacing: 0) {
                    Button(action: {
                        
                    }, label: {
                        Image("home")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(index == 0 ? .white : Color.white.opacity(0.35))
                            .padding()
                    })
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }, label: {
                        Image("search")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(index == 1 ? .white : Color.white.opacity(0.35))
                            .padding()
                    })
                    
                    Spacer(minLength: 0)
                    Button(action: {
                        
                    }, label: {
                        Image("upload")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                    Button(action: {
                        
                    }, label: {
                        Image("comment")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(index == 2 ? .white : Color.white.opacity(0.35))
                            .padding()
                    })
                    
                    Spacer(minLength: 0)
                    Button(action: {
                        
                    }, label: {
                        Image("upload")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(index == 3 ? .white : Color.white.opacity(0.35))
                            .padding()
                    })
                }
                .padding(.horizontal)
            }
        }
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
