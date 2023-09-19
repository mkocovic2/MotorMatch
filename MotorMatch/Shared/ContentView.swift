//
//  ContentView.swift
//  Shared
//
//  Created by Michael on 4/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showFrontPage = false
    @State private var opacity = 0.0

    var body: some View {
        NavigationView {
            ZStack{
                Image("background2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(opacity)
                VStack(spacing: 20) {
                    Text("Welcome to MotorMatch")
                        .font(.custom("Nexa-Heavy", size: 25))
                        .foregroundColor(.white)
                        .padding(.top, 20)
                    
                    Text("The ultimate car statistics app.")
                        .font(.custom("Nexa-Heavy", size: 15))
                        .foregroundColor(.white)
                        .padding(.bottom, 30.0)
                    
                    Image("carArt-1")
                        .resizable()
                        .frame(width: 250, height: 125)
                    
                    Text("A Diverse Library of Vehicles")
                        .frame(width: 300, height: 20)
                        .font(.custom("Nexa-Heavy", size: 15))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 20.0)
                    
                    Image("engineArt-2")
                        .resizable()
                        .frame(width: 150, height: 150)
                    
                    Text("Vital Vehicle Metrics")
                        .font(.custom("Nexa-Heavy", size: 15))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 20.0)
                    
                    Image("chartArt")
                        .resizable()
                        .frame(width: 100, height: 110)
                    Text("Vital Vehicle Metrics")
                        .font(.custom("Nexa-Heavy", size: 15))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 20.0)
                    
                    Spacer()
                    
                    Button(action: {
                        showFrontPage = true
                    }) {
                        Image("arrow")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.trailing)
                .opacity(opacity)
                Rectangle()
                    .fill(Color.clear)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.0)) {
                            opacity = 1.0
                    }
                }
            }
            .navigationBarHidden(true)
        }
        .fullScreenCover(isPresented: $showFrontPage) {
            FrontPageView().navigationBarBackButtonHidden(true)
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
