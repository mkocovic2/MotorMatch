//
//  FrontPageView.swift
//  MotorMatch (iOS)
//
//  Created by Michael on 4/26/23.
//

import SwiftUI

struct FrontPageView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("background2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                GeometryReader { geometry in
                    VStack{
                        NavigationLink(destination: helpPage()) {
                            Image("frontHead32")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300, height: 350)
                                .cornerRadius(20.0)
                                .padding(.top, 20.0)
                        }
                        NavigationLink(destination: CarDataView()) {
                            Image("carimg2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300, height: 125)
                                .cornerRadius(20.0)
                                .padding(.top, 20.0)
                        }
                        NavigationLink(destination: TruckDataView()) {
                            Image("truckimg")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300, height: 125)
                                .cornerRadius(20.0)
                                .padding(.top, 20.0)
                        }
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                }
            }
            .navigationBarHidden(true)
            .navigationBarTitle("Home") 
            .navigationBarBackButtonHidden(true)
        }
    }
}


struct FrontPageView_Previews: PreviewProvider {
    static var previews: some View {
        FrontPageView()
    }
}
