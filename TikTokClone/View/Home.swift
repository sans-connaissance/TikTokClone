//
//  Home.swift
//  TikTokClone
//
//  Created by David Malicke on 9/21/21.
//

import SwiftUI

struct Home: View {
    
    @State var index = 0
    @State var top = 0
    
    var body: some View {
        ZStack {
            
            VStack{
                //top menu
                HStack(spacing: 15) {
                    Button {
                      top = 0
                    } label: {
                        Text("Following")
                            .foregroundColor(top == 0 ? .white : Color.white.opacity(0.45))
                            .fontWeight(top == 0 ? .bold : .none)
                            .padding(.vertical)
                    }
                    
                    Button {
                      top = 1
                    } label: {
                        Text("For You")
                            .foregroundColor(top == 1 ? .white : Color.white.opacity(0.45))
                            .fontWeight(top == 1 ? .bold : .none)
                            .padding(.vertical)
                    }


                }
                
                Spacer()
                //right menu
                HStack{
                    Spacer()
                    VStack(spacing: 35){
                        
                        Button(action: {
                            
                        }, label: {
                            Image("pic")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            VStack {
                                Image(systemName: "suit.heart.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("400K")
                                    .foregroundColor(.white)
                            }
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            VStack(spacing: 8) {
                                Image(systemName: "message.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("1542")
                                    .foregroundColor(.white)
                            }
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("Share")
                                    .foregroundColor(.white)
                            }
                        })
                    }
                    .padding(.bottom, 55)
                    .padding(.trailing)
                }
                //bottom menu
                HStack(spacing: 0){
                    Button(action: {
                        index = 0
                    }, label: {
                        Image("home")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 0 ? .white: Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        index = 1
                    }, label: {
                        Image("search")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
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
                        index = 2
                    }, label: {
                        Image("comment")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        index = 3
                    }, label: {
                        Image("profile")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    
                }
                .padding(.horizontal)
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 5)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}