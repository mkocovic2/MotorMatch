//
//  helpPage.swift
//  MotorMatch (iOS)
//
//  Created by Michael on 5/2/23.
//

import SwiftUI

struct helpPage: View {
    var body: some View {
        ZStack{
            Image("background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("User Manual")
                    .font(.custom("Nexa-Heavy", size: 40))
                    .foregroundColor(.white)
                    .underline()
                HStack{
                    NavigationLink(destination: CarMaintenancePage()) {
                        Image("carMain")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(20.0)
                            .padding(.top, 20.0)
                    }
                    
                    NavigationLink(destination: TermPage()) {
                        Image("motorTerm-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(20.0)
                            .padding(.top, 20.0)
                            .padding(.horizontal, 10.0)
                    }
                }
                HStack{
                    NavigationLink(destination: advicePage()) {
                        Image("advice")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(20.0)
                            .padding(.top, 20.0)
                    }
                    
                    NavigationLink(destination: resourcePage()) {
                        Image("hand")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(20.0)
                            .padding(.top, 20.0)
                            .padding(.horizontal, 10.0)
                    }
                }
                
                NavigationLink(destination: trianglePage()) {
                    ZStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 300, height: 50)
                            .cornerRadius(30)
                        Text("Vehicle Triangle")
                            .font(.custom("Nexa-Heavy", size: 15))
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .padding(.top)
                
                NavigationLink(destination: mechanicPage()) {
                    ZStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 300, height: 50)
                            .cornerRadius(30)
                        Text("24/7 Mechanic")
                            .font(.custom("Nexa-Heavy", size: 15))
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}


struct helpPage_Previews: PreviewProvider {
    static var previews: some View {
        helpPage()
    }
}

