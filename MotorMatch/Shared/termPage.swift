//
//  termPage.swift
//  MotorMatch (iOS)
//
//  Created by Michael on 5/9/23.
//

import SwiftUI

struct TermPage: View {
    var body: some View {
        ZStack {
            Image("background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                Text("Terminology")
                    .font(.custom("Nexa-Heavy", size: 40))
                    .underline()
                    .padding(.vertical, 30)
                    .foregroundColor(.white)
                VStack(alignment: .leading, spacing: 20) {
                    TermView(title: "City MPG", description: "The miles per gallon (MPG) a vehicle can travel in city driving conditions. This is important because city driving typically uses more fuel than highway driving, so a car with a higher city MPG rating will be more fuel-efficient in these situations.")
                    Divider()
                    TermView(title: "Class", description: "The type of vehicle, such as sedan, SUV, truck, or van. This is essentially the size of your vehicle.")
                    Divider()
                    TermView(title: "Combination MPG", description: "The miles per gallon (MPG) a vehicle can travel in a combination of city and highway driving conditions.")
                    Divider()
                    TermView(title: "Cylinders", description: "The number of cylinders in the engine of a vehicle. More cylinders generally means more power, but also lower fuel efficiency. For example, a V4 engine has four cylinders. A V6 engine has 6 cylinders. The V6 engine is faster, but the v4 engine is more efficient.")
                    Divider()
                }
                VStack(alignment: .leading, spacing: 20){
                    TermView(title: "Displacement", description: "The volume of space in the engine cylinders where fuel is burned and power is produced. Measured in liters (L) or cubic inches (ci). So, when you hear someone talking about engine displacement, they are essentially referring to the size of the engine and its potential power output.")
                    Divider()
                    TermView(title: "Drive", description: "The configuration of a vehicle's drivetrain, such as front-wheel drive (FWD), rear-wheel drive (RWD), or all-wheel drive (AWD). This is where the cars power goes to, going to the front, rear, or all of the wheels")
                    Divider()
                    TermView(title: "Fuel Type", description: "The type of fuel the vehicle is designed to use, such as gasoline, diesel, or electric. Most trucks take diesel, while most cars take gasoline. Electric is mainly used in EV cars and trucks.")
                    Divider()
                    TermView(title: "Highway MPG", description: "The miles per gallon (MPG) a vehicle can travel on the highway or at higher speeds.")
                    Divider()
                    TermView(title: "Make", description: "The brand or manufacturer of the vehicle.")
                    Divider()
                }
                VStack(alignment: .leading, spacing: 20){
                    TermView(title: "Model", description: "The specific name or number of the vehicle, indicating its unique features and specifications. An example of this would be a 'camry' from Toyota")
                    Divider()
                    TermView(title: "Transmission", description: "The type of gearbox or transmission that the vehicle uses to transfer power from the engine to the wheels, such as automatic or manual.")
                    Divider()
                }
            }
        }
    }
}

struct TermView: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
            Text(description)
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(.horizontal, 50)

    }
}

struct TermPage_Previews: PreviewProvider {
    static var previews: some View {
        TermPage()
    }
}
