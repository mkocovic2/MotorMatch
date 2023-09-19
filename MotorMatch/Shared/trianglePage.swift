//
//  trianglePage.swift
//  MotorMatch (iOS)
//
//  Created by Michael on 5/11/23.
//

import SwiftUI

struct trianglePage: View {
    var body: some View {
        ZStack {
            Image("background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Vehicle Triangle")
                    .font(.custom("Nexa-Heavy", size: 40))
                    .foregroundColor(.white)
                    .underline()
                    .padding(.top, 50)
                Image("triangle")
                    .resizable()
                    .frame(width: 300, height: 300)
                Text("The Vehicle Triangle is a diagram that contains three parameters when buying a car. While the Vehicle Triangle can work with other vehicles, it applies to cars the most.")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding()
                
                Text("Two of these parameters must be picked. Something that is fast and cheap won't be reliable. A car that is fast and reliable won't be cheap.")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding()
                    
                Spacer()
            }
        }
    }
}

struct trianglePage_Previews: PreviewProvider {
    static var previews: some View {
        trianglePage()
    }
}
