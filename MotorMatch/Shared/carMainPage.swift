//
//  carMainPage.swift
//  MotorMatch (iOS)
//
//  Created by Michael on 5/9/23.
//

import SwiftUI

struct CarMaintenancePage: View {
    var body: some View {
        ZStack {
            Image("background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ScrollView {
                    Text("Car Maintenance")
                        .font(.custom("Nexa-Heavy", size: 40))
                        .foregroundColor(.white)
                        .padding(.top, 50)
                    Text("Regular maintenance is essential to keep your car running smoothly and avoid costly repairs down the road. Here are eight tips to help you take care of your car:")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 20)
                        .multilineTextAlignment(.center)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        MaintenanceTipView(title: "Check your oil regularly", description: "Make sure you check your car's oil level at least once a month, and change the oil and oil filter every 5,000 miles or as recommended by the manufacturer.")
                        MaintenanceTipView(title: "Inspect your tires", description: "Check your tires regularly for signs of wear or damage, and make sure they are inflated to the proper pressure.")
                        MaintenanceTipView(title: "Replace your air filter", description: "A dirty air filter can reduce your car's performance and fuel efficiency, so replace it every 12,000 miles or as recommended by the manufacturer.")
                        MaintenanceTipView(title: "Check your brakes", description: "Have your brakes inspected regularly, and replace the brake pads and rotors as needed.")
                        MaintenanceTipView(title: "Keep your car clean", description: "Wash your car regularly to remove dirt and debris that can damage the paint and body.")
                        MaintenanceTipView(title: "Replace your windshield wipers", description: "Replace your wiper blades every six months to a year, or as soon as they start to streak or skip.")
                        MaintenanceTipView(title: "Check your battery", description: "Have your battery tested regularly, and replace it if it is more than three years old.")
                        MaintenanceTipView(title: "Follow the maintenance schedule", description: "Follow the manufacturer's recommended maintenance schedule to ensure your car is properly maintained and any issues are addressed before they become major problems.")
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                }
                
                Spacer()
            }
        }
    }
}

struct MaintenanceTipView: View {
    var title: String
    var description: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "checkmark.circle")
                .foregroundColor(.green)
                .font(.headline)
                .padding(.top, 4)
                .padding(.trailing, 10)
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
            }
        }
    }
}

struct CarMaintenancePage_Previews: PreviewProvider {
    static var previews: some View {
        CarMaintenancePage()
    }
}
