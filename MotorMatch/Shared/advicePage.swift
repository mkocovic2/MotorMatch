//
//  advicePage.swift
//  MotorMatch (iOS)
//
//  Created by Michael on 5/9/23.
//

import SwiftUI

struct advicePage: View {
    var body: some View {
        ZStack {
            Image("background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                Text("Buying Advice")
                    .font(.custom("Nexa-Heavy", size: 40))
                    .underline()
                    .padding(.vertical, 50)
                    .foregroundColor(.white)
                VStack(alignment: .leading, spacing: 20) {
                    adviceView(title: "1. Set a budget and stick to it:", description: "Setting a budget should be the first step in buying any vehicle. This can help you narrow down your options. Sticking to a budget can be quite helpful, since it prevents you from overspending and getting into financial trouble.")
                    Divider()
                    adviceView(title: "2. Research different vehicles and their features:", description: "Finding the car thats right for you is the most crucial part of buying a car. Its best to do research on a car before you buy it. This doesn't just include the statistics of the vehicle, but costs such as insurance, sales tax, and possibly repairs.")
                    Divider()
                    adviceView(title: "3. Check the vehicle's history report:", description: "Always check if the vehicle has been in a prior accident, how many owners have owned the vehicle, and the most important, is the title to the vehicle still intact. Always check the vehicles mileage, this tells the consumer how long the vehicle has been driving for. If the mileage treads on a high number, then the vehicle may need to get some extra work done. Always keep these factors in mind.")
                    Divider()
                    adviceView(title: "4. Take the car for a test drive:", description: "Test driving a car is an essential step in the car-buying process. It allows you to experience how the car handles, accelerates, and brakes. During a test drive, you can also get a feel for the car's comfort and interior features, such as the infotainment system and the sound system.")
                    Divider()
                    adviceView(title: "5. Have a mechanic inspect the vehicle:", description: "Having a mechanic inspect the vehicle is an important step in buying a used car. A mechanic can examine the car's overall condition and identify any potential problems or maintenance issues that may need to be addressed. They can also provide an estimate of the cost to fix any issues and determine whether the car is a good value for the price.")
                    Divider()
                }
            }
        }
    }
}

struct adviceView: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
            Text(description)
                .font(.subheadline)
        }
        .padding(.horizontal, 50)
        .foregroundColor(.white)
    }
}

struct advicePage_Previews: PreviewProvider {
    static var previews: some View {
        advicePage()
    }
}

